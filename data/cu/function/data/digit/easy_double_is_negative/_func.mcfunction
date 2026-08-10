data modify storage cu:internal dummy set value {x:0,y:0,z:0}
data modify storage cu:internal dummy.y set from storage cu:io data.digit.easy_double_is_negative.Input
data remove storage cu:io data.digit.easy_double_is_negative.Input
execute at @s store success score #1 temp run function cu:entity/lazy_teleport_relative_coordinates with storage cu:internal dummy
execute if score #1 temp matches 0 run return fail
scoreboard players set #data.digit.easy_double_is_negative.Result cu-io 0
execute at @s unless predicate {condition:"minecraft:location_check",predicate:{position:{y:{min:0d}}}} run scoreboard players set #data.digit.easy_double_is_negative.Result cu-io 1
kill @s
return 1
