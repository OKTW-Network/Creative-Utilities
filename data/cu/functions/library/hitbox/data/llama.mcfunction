execute store result score #3 calcu_temp run data get entity @s Age
execute if score #3 calcu_temp matches 0.. run scoreboard players set #1 calcu_temp 5
execute if score #3 calcu_temp matches 0.. run scoreboard players set #2 calcu_temp 19
execute if score #3 calcu_temp matches ..-1 run scoreboard players set #1 calcu_temp 2
execute if score #3 calcu_temp matches ..-1 run scoreboard players set #2 calcu_temp 9
function cu:library/hitbox/write
