# permission level 2 detection
tag @s[tag=isOP] remove isOP
scoreboard players set #calculation_temp1 numeric 0
execute store success score #calculation_temp1 numeric run scoreboard players remove #calculation_temp2 numeric 0
execute if score #calculation_temp1 numeric matches 1 run tag @s add isOP
