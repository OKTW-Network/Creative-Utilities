execute if entity @s[nbt={Age:0}] run scoreboard players set #calculation_temp1 numeric 6
execute if entity @s[nbt={Age:0}] run scoreboard players set #calculation_temp2 numeric 4
execute if entity @s[nbt=!{Age:0}] run scoreboard players set #calculation_temp1 numeric 2
execute if entity @s[nbt=!{Age:0}] run scoreboard players set #calculation_temp2 numeric 1
function cu:library/hitbox/write
