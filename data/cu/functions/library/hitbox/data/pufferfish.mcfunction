execute if entity @s[nbt={PuffState:0}] run scoreboard players set #calculation_temp1 numeric 2
execute if entity @s[nbt={PuffState:0}] run scoreboard players set #calculation_temp2 numeric 4
execute if entity @s[nbt={PuffState:1}] run scoreboard players set #calculation_temp1 numeric 3
execute if entity @s[nbt={PuffState:1}] run scoreboard players set #calculation_temp2 numeric 5
execute if entity @s[nbt={PuffState:2}] run scoreboard players set #calculation_temp1 numeric 4
execute if entity @s[nbt={PuffState:2}] run scoreboard players set #calculation_temp2 numeric 7
function cu:library/hitbox/write
