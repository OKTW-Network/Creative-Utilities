execute if entity @s[nbt={Age:0}] run scoreboard players set #1 calcu_temp 5
execute if entity @s[nbt={Age:0}] run scoreboard players set #2 calcu_temp 13
execute if entity @s[nbt=!{Age:0}] run scoreboard players set #1 calcu_temp 2
execute if entity @s[nbt=!{Age:0}] run scoreboard players set #2 calcu_temp 7
function cu:library/hitbox/write
