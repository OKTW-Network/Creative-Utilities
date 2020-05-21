execute if entity @s[nbt={Age:0}] run scoreboard players set #calculation_temp1 numeric 7
execute if entity @s[nbt={Age:0}] run scoreboard players set #calculation_temp2 numeric 16
execute if entity @s[nbt=!{Age:0}] run scoreboard players set #calculation_temp1 numeric 4
execute if entity @s[nbt=!{Age:0}] run scoreboard players set #calculation_temp2 numeric 8
function cu:library/hitbox/write
