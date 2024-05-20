data modify entity @s transformation.translation[2] set value -3.8f
data merge entity @s {transformation:{scale:[1.1f,1.1f,1.1f]},start_interpolation:0,interpolation_duration:10}

tag @s remove glbs_to_set_state_normal