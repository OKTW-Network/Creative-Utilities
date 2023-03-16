data modify storage cu:value digit.rotation_vector.result set value [0.0d,0.0d,0.0d]
execute in cu:data_temp positioned 1 9 1 run summon minecraft:marker ~ ~ ~ {Tags:["cu.dummy.value.digit.rotationVector"]}
data modify entity @e[tag=cu.dummy.value.digit.rotationVector,limit=1] Rotation set from storage cu:value digit.rotation_vector.input
execute as @e[tag=cu.dummy.value.digit.rotationVector] at @s run tp ^ ^ ^1
execute store result score #value.digit.rotation_vector._temp cu run data get entity @e[tag=cu.dummy.value.digit.rotationVector,limit=1] Pos[0] 100000000
execute store result storage cu:value digit.rotation_vector.result[0] double 0.00000001 run scoreboard players remove #value.digit.rotation_vector._temp cu 100000000
execute store result score #value.digit.rotation_vector._temp cu run data get entity @e[tag=cu.dummy.value.digit.rotationVector,limit=1] Pos[1] 100000000
execute store result storage cu:value digit.rotation_vector.result[1] double 0.00000001 run scoreboard players remove #value.digit.rotation_vector._temp cu 900000000
execute store result score #value.digit.rotation_vector._temp cu run data get entity @e[tag=cu.dummy.value.digit.rotationVector,limit=1] Pos[2] 100000000
execute store result storage cu:value digit.rotation_vector.result[2] double 0.00000001 run scoreboard players remove #value.digit.rotation_vector._temp cu 100000000

kill @e[tag=cu.dummy.value.digit.rotationVector]
data remove storage cu:value digit.rotation_vector.input
scoreboard players reset #value.digit.rotation_vector._temp cu
