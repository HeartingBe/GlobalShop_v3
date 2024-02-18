data modify storage global_shop:common temp.jsontext.extra set value []
data modify storage global_shop:common temp.jsontext.extra append value {text:" "}
$data modify storage global_shop:common temp.jsontext.extra append value {"type":"translatable","translate":"enchantment.level.$(lvl)"}