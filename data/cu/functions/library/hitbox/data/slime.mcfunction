execute store result score #3 calcu_temp run data get entity @s Size
scoreboard players add #3 calcu_temp 1
scoreboard players set #1 calcu_temp 3
scoreboard players set #2 calcu_temp 5
scoreboard players operation #1 calcu_temp *= #3 calcu_temp
scoreboard players operation #2 calcu_temp *= #3 calcu_temp
function cu:library/hitbox/write
