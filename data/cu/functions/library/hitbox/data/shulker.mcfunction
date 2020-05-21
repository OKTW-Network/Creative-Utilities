execute if entity @s[nbt={Peek:0}] run scoreboard players set #calculation_temp1 numeric 5
execute if entity @s[nbt={Peek:0}] run scoreboard players set #calculation_temp2 numeric 10
execute if entity @s[nbt={Peek:30}] run scoreboard players set #calculation_temp1 numeric 5
execute if entity @s[nbt={Peek:30}] run scoreboard players set #calculation_temp2 numeric 12
execute if entity @s[nbt={Peek:100}] run scoreboard players set #calculation_temp1 numeric 5
execute if entity @s[nbt={Peek:100}] run scoreboard players set #calculation_temp2 numeric 20
function cu:library/hitbox/write
