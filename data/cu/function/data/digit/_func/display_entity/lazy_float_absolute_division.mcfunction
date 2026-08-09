data modify storage cu:internal dummy set value 0.0f
$execute store success score #1 temp run data modify storage cu:internal dummy set value $(divisor)f
execute if score #1 temp matches 0 run kill @s
execute if score #1 temp matches 0 run return fail
$data modify entity @s transformation set value [$(dividend)f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,0f,$(divisor)f]
data modify storage cu:internal dummy set value 1.0f
execute store success score #1 temp run data modify storage cu:internal dummy set from entity @s transformation.scale[2]
execute if score #1 temp matches 0 run kill @s
execute if score #1 temp matches 0 run return fail
data modify storage cu:internal data.digit.display_entity.lazy_float_absolute_division.Result set from entity @s transformation.scale[0]
kill @s
return 1
