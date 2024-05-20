# @executor ItemDisplayEntity

tag @s add glbs_to_carry_text_display

execute summon minecraft:text_display run function global_shop:ui/display_manager/summon_single_item/summon/carry_text_display/summon_without_animation

tag @s remove glbs_to_carry_text_display