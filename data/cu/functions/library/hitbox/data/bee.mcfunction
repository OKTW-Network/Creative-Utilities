execute if entity @s[nbt={Age:0}] run scoreboard players set #1 calcu_temp 6
execute if entity @s[nbt={Age:0}] run scoreboard players set #2 calcu_temp 6
execute if entity @s[nbt=!{Age:0}] run scoreboard players set #1 calcu_temp 3
execute if entity @s[nbt=!{Age:0}] run scoreboard players set #2 calcu_temp 3
function cu:library/hitbox/write
