execute store success score #1 temp run data modify entity @s Rotation set from storage cu:io value.rotation_to_vector.Input
execute if score #1 temp matches 0 run kill @s
execute if score #1 temp matches 0 run return fail
tp ^ ^ ^1
data modify storage cu:io value.rotation_to_vector.Result set value [0.0d,0.0d,0.0d]
execute store result score #1 temp run data get entity @s Pos[0] 100000000
execute store result storage cu:io value.rotation_to_vector.Result[0] double 0.00000001 run scoreboard players remove #1 temp 100000000
execute store result score #1 temp run data get entity @s Pos[1] 100000000
execute store result storage cu:io value.rotation_to_vector.Result[1] double 0.00000001 run scoreboard players remove #1 temp 900000000
execute store result score #1 temp run data get entity @s Pos[2] 100000000
execute store result storage cu:io value.rotation_to_vector.Result[2] double 0.00000001 run scoreboard players remove #1 temp 100000000
kill @s

return 1
