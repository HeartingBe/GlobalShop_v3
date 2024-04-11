import os
import shutil
import re

# 生成映射后的整个数据包
def gen(namespace_to_map_functions):
    # 当前文件夹
    current_dir = os.path.dirname(__file__)
    # 项目文件夹
    project_dir = os.path.dirname(current_dir)
    # 项目文件夹名称
    project_name = os.path.basename(project_dir)
    # 目标文件夹
    target_dir = os.path.join(current_dir, project_name)

    # 创建目标文件夹
    if not os.path.exists(target_dir):
        os.makedirs(target_dir)
    else:
        print(f'folder "{target_dir}" already exists.\nTo regenerate, please delete it')
        return

    # 拷贝 pack.mcmeta
    src_file = os.path.join(project_dir, 'pack.mcmeta')
    if os.path.exists(src_file):
        target_file = os.path.join(target_dir, 'pack.mcmeta')
        shutil.copy2(src_file, target_file)
        print("copy pack.mcmeta done")
    else:
        print("no find pack.mcmeta")

    # 拷贝 pack.png
    src_file = os.path.join(project_dir, 'pack.png')
    if os.path.exists(src_file):
        target_file = os.path.join(target_dir, 'pack.png')
        shutil.copy2(src_file, target_file)
        print("copy pack.png done")
    else:
        print("no find pack.png")
    
    # 拷贝 README.md
    src_file = os.path.join(project_dir, 'README.md')
    if os.path.exists(src_file):
        target_file = os.path.join(target_dir, 'README.md')
        shutil.copy2(src_file, target_file)
        print("copy README.md done")
    else:
        print("no find README.md")

    # 递归拷贝所有命名空间文件夹
    src_dir = os.path.join(project_dir, 'data')
    des_dir = os.path.join(target_dir, 'data')
    for item in os.listdir(src_dir):
        src_item_dir = os.path.join(src_dir, item)
        des_item_dir = os.path.join(des_dir, item)
        if item == namespace_to_map_functions:
            # 需要映射函数的命名空间进行函数映射处理
            key_prefix_len = len(src_item_dir) + len('\\functions') + 1 # 1 代表去掉剩余内容的首个字符即反斜杆，下同
            value_prefix_len = len(des_item_dir) + len('\\functions') + 1
            function_dict = map_functions(src_item_dir, des_item_dir)
        else:
            # 不是需要映射函数的命名空间，直接复制所有的
            copy_all_2(src_item_dir, des_item_dir)
    print(f"copy all namespace folders and map functions in {namespace_to_map_functions} done")

    # 遍历所有命名空间下的 mcfunction，去掉前导空格，去掉注释
    rm_leading_blanks_and_annotation(des_dir)
    print("remove leading blanks and annotation in all namespace folders done")
    
    # 下面遍历所有命名空间文件夹，根据 function_dict 的映射进行正则匹配替换
    # 由于 function_dict 是 绝对路径 -> 绝对路径，需要先处理成 mcf 函数调用形式
    # xxx:xxx -> xxx:xxx 的形式
    new_dict = {}
    for key, value in function_dict.items():
        suffix_len = len('.mcfunction')
        new_key = namespace_to_map_functions + ':' + key[key_prefix_len:-suffix_len].replace("\\", "/")
        new_value = namespace_to_map_functions + ':' + value[value_prefix_len:-suffix_len].replace("\\", "/")
        new_dict[new_key] = new_value
        #print(new_key + ' -> ' + new_value)
    # 正则替换时，仅处理所有命名空间下的 functions、advancements、tags/functions
    namespace_dir = os.path.join(target_dir, 'data')
    for item in os.listdir(namespace_dir):
        item_dir = os.path.join(namespace_dir, item)

        functions_dir = os.path.join(item_dir, 'functions')
        if os.path.exists(functions_dir):
            regex_replace_function(functions_dir, new_dict)

        advancements_dir = os.path.join(item_dir, 'advancements')
        if os.path.exists(advancements_dir):
            regex_replace_advancements(advancements_dir, namespace_to_map_functions, new_dict)

        tags_functions_dir = os.path.join(os.path.join(item_dir, 'tags'), 'functions')
        if os.path.exists(tags_functions_dir):
            regex_replace_tags_functions(tags_functions_dir, namespace_to_map_functions, new_dict)
    print("regex replace function call done")

    print("done")

def copy_all_2(src_dir, des_dir):
    if not os.path.exists(des_dir):
        os.makedirs(des_dir)
        
    for item in os.listdir(src_dir):
        src_item_dir = os.path.join(src_dir, item)
        des_item_dir = os.path.join(des_dir, item)
        if os.path.isdir(src_item_dir):
            # 当前路径是文件夹，递归复制
            copy_all_2(src_item_dir, des_item_dir)
        else:
            # 复制文件
            shutil.copy2(src_item_dir, des_item_dir)

def map_functions(src_dir, des_dir):
    # src_dir、des_dir 是命名空间文件夹
    if not os.path.exists(des_dir):
        os.makedirs(des_dir)

    # 第一步，将除了 funcions 以外的文件夹复制过来
    for item in os.listdir(src_dir):
        src_item_dir = os.path.join(src_dir, item)
        des_item_dir = os.path.join(des_dir, item)
        if item != 'functions':
            copy_all_2(src_item_dir, des_item_dir)

    # 第二步，遍历源 funcions 文件夹，将其加入字典并编号，得到 绝对路径 -> 编号 的映射
    # 但跳过 test 文件夹（不复制），不映射 settings 文件夹（映射后仍放在 settings 文件夹中）
    functions_src_dir = os.path.join(src_dir, 'functions')
    functions_des_dir = os.path.join(des_dir, 'functions')
    function_dict = {}
    number_function(0, function_dict, functions_src_dir, functions_des_dir, len(functions_src_dir))
    
    # 第三步，将 funcions 子文件夹所有文件映射到目标命名空间的 funcions/mapper/?.mcfunction 中
    for key, value in function_dict.items():
        target_dir, target_name = os.path.split(value)
        if not os.path.exists(target_dir):
            os.makedirs(target_dir)
        shutil.copy2(key, value)

    return function_dict

def rm_leading_blanks_and_annotation(target_dir):
    for item in os.listdir(target_dir):
        item_dir = os.path.join(target_dir, item)
        if os.path.isdir(item_dir):
            rm_leading_blanks_and_annotation(item_dir)
        else:
            # 只处理 .mcfunction 文件
            if not item_dir.endswith('.mcfunction'):
                continue
            
            processed_lines = []
            with open(item_dir, 'r+', encoding='utf-8') as file: # with 代码块结束时自动关闭文件
                for line in file:
                    # 去掉每一行前面的空格
                    line = line.strip()
                    # 删除空行
                    if not line:
                        continue
                    # 如果第一个非空格字符是 #，跳过该行
                    if line.startswith('#'):
                        continue
                    processed_lines.append(line + '\n')
                file.seek(0)
                file.writelines(processed_lines)
                file.truncate()

def regex_replace_function(target_dir, func_dict):
    def function_finder(match):
        func = match.group(1)
        map_func = func
        if func in func_dict:
            map_func = func_dict[func]
        return 'function ' + map_func
    
    for item in os.listdir(target_dir):
        item_dir = os.path.join(target_dir, item)
        if os.path.isdir(item_dir):
            regex_replace_function(item_dir, func_dict)
        else:
            with open(item_dir, 'r+', encoding='utf-8') as file:
                content = file.read()

                # 需要考虑宏函数，如果 function 命令带宏，也进行识别，只不过在 dict 中找不到，替换为自身即可
                processed = re.sub(r'function ([a-z0-9_/:()$]+)', function_finder, content)
                
                file.seek(0)
                file.writelines(processed)
                file.truncate()

def regex_replace_advancements(target_dir, namespace_to_map_functions, func_dict):
    def function_finder(match):
        func = match.group(2)
        return match.group(1) + func_dict[func]
    
    for item in os.listdir(target_dir):
        item_dir = os.path.join(target_dir, item)
        if os.path.isdir(item_dir):
            regex_replace_json(item_dir, namespace_to_map_functions, func_dict)
        else:
            with open(item_dir, 'r+', encoding='utf-8') as file:
                content = file.read()

                processed = re.sub(r'("function"[ ]*:[ ]*")(' + namespace_to_map_functions + r':[a-z0-9_/]+)', function_finder, content)
                
                file.seek(0)
                file.writelines(processed)
                file.truncate()

def regex_replace_tags_functions(target_dir, namespace_to_map_functions, func_dict):
    def function_finder(match):
        func = match.group(1)
        return func_dict[func]
    
    for item in os.listdir(target_dir):
        item_dir = os.path.join(target_dir, item)
        if os.path.isdir(item_dir):
            regex_replace_json(item_dir, namespace_to_map_functions, func_dict)
        else:
            with open(item_dir, 'r+', encoding='utf-8') as file:
                content = file.read()

                processed = re.sub('(' + namespace_to_map_functions + r':[a-z0-9_/]+)', function_finder, content)
                
                file.seek(0)
                file.writelines(processed)
                file.truncate()

def number_function(num, function_dict, src_dir, des_dir, prefix_len):
    for item in os.listdir(src_dir):
        src_item_dir = os.path.join(src_dir, item)
        if os.path.isdir(src_item_dir):
            num = number_function(num, function_dict, src_item_dir, des_dir, prefix_len)
        else:
            # 跳过 test 文件夹（不复制），不映射 settings、text 文件夹
            relative_dir = src_item_dir[prefix_len:]
            if relative_dir.startswith('\\test\\'): # windows 用正斜杆，Unix 用反斜杆
                #print('skip ' + src_item_dir)
                continue;
            if relative_dir.startswith('\\settings\\') or relative_dir.startswith('\\text\\'):
                function_dict[src_item_dir] = des_dir + relative_dir
                #print(src_item_dir + ' -> ' + function_dict[src_item_dir])
            else:
                function_dict[src_item_dir] = des_dir + '\\mapper\\' + str(num) + ".mcfunction"
                num += 1
    return num

gen('global_shop')
