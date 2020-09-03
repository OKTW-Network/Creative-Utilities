data modify storage cu:resources armor.quantity set value 0
function math:calcu_temp/clear
execute if data entity @s ArmorItems[0].Count run scoreboard players add #1 calcu_temp 1
execute if data entity @s ArmorItems[1].Count run scoreboard players add #1 calcu_temp 1
execute if data entity @s ArmorItems[2].Count run scoreboard players add #1 calcu_temp 1
execute if data entity @s ArmorItems[3].Count run scoreboard players add #1 calcu_temp 1
execute store result storage cu:resources armor.quantity int 1 run scoreboard players get #1 calcu_temp
