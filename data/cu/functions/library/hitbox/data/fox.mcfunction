execute if entity @s[nbt={Age:0}] run scoreboard players set #calculation_temp1 numeric 2
execute if entity @s[nbt={Age:0}] run scoreboard players set #calculation_temp2 numeric 3
execute if entity @s[nbt=!{Age:0}] run scoreboard players set #calculation_temp1 numeric 3
execute if entity @s[nbt=!{Age:0}] run scoreboard players set #calculation_temp2 numeric 5
function cu:library/hitbox/write