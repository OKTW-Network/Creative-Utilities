execute store result score #3 calcu_temp run data get entity @s Age
execute if score #3 calcu_temp matches 0.. run scoreboard players set #1 calcu_temp 7
execute if score #3 calcu_temp matches 0.. run scoreboard players set #2 calcu_temp 16
execute if score #3 calcu_temp matches ..-1 run scoreboard players set #1 calcu_temp 4
execute if score #3 calcu_temp matches ..-1 run scoreboard players set #2 calcu_temp 8
function cu:library/hitbox/write
