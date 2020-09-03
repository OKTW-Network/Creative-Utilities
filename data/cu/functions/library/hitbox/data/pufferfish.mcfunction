execute if entity @s[nbt={PuffState:0}] run scoreboard players set #1 calcu_temp 2
execute if entity @s[nbt={PuffState:0}] run scoreboard players set #2 calcu_temp 4
execute if entity @s[nbt={PuffState:1}] run scoreboard players set #1 calcu_temp 3
execute if entity @s[nbt={PuffState:1}] run scoreboard players set #2 calcu_temp 5
execute if entity @s[nbt={PuffState:2}] run scoreboard players set #1 calcu_temp 4
execute if entity @s[nbt={PuffState:2}] run scoreboard players set #2 calcu_temp 7
function cu:library/hitbox/write
