scoreboard players set #1 temp 20
execute store result score #2 temp run data get entity @s active_effects[{id:"minecraft:resistance"}].amplifier
scoreboard players add #2 temp 1
scoreboard players operation #1 temp *= #2 temp
execute if score #1 temp matches 101.. run scoreboard players set #1 temp 100
scoreboard players remove #1 temp 100
scoreboard players operation #1 temp *= #-1 num
scoreboard players operation #entity.damage_reduction.damage cu *= #1 temp
