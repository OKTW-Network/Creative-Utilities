execute store result score #result cu.dataStorage if entity @e[tag=cu.dataStorage.base]
execute if entity @s[type=minecraft:player] if score #result cu.dataStorage matches 1.. run tellraw @s ["Found ",{"score":{"name":"#result","objective":"cu.dataStorage"}}," database(s)"]
execute if entity @s[type=minecraft:player] if score #result cu.dataStorage matches 0 run tellraw @s ["",{"text":"No database was found","color":"red"}]
