execute if entity @s[nbt={Age:0}] run scoreboard players set #1 calcu_temp 5
execute if entity @s[nbt={Age:0}] run scoreboard players set #2 calcu_temp 17
execute if entity @s[nbt=!{Age:0}] run scoreboard players set #1 calcu_temp 3
execute if entity @s[nbt=!{Age:0}] run scoreboard players set #2 calcu_temp 9
function cu:library/hitbox/write
