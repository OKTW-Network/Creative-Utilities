execute as @e[tag=cu.dataStorage.base] at @s store success score #result cu.dataStorage run summon minecraft:marker ~ ~ ~ {Tags:["cu.dataStorage.container","init"]}
execute if entity @s[type=minecraft:player] if score #result cu.dataStorage matches 1.. run tellraw @s ["UUID: ",{"nbt":"UUID","entity":"@e[tag=cu.dataStorage.container,tag=init,limit=1]","interpret":false}]
execute if entity @s[type=minecraft:player] if score #result cu.dataStorage matches 0 run tellraw @s ["",{"text":"Failed to create the data container","color":"red"}]
execute if entity @s[type=minecraft:player] run tag @e[tag=cu.dataStorage.container,tag=init,limit=1] remove init
