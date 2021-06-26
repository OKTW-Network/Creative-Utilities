execute store result score #result cu.dataStorage if entity @e[tag=cu.dataStorage.container]
execute if entity @s[type=minecraft:player] if score #result cu.dataStorage matches 1.. run tellraw @s ["Found ",{"score":{"name":"#result","objective":"cu.dataStorage"}}," data container(s)"]
execute if entity @s[type=minecraft:player] if score #result cu.dataStorage matches 0 run tellraw @s ["",{"text":"No data container was found","color":"red"}]
