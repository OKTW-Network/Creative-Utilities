execute as @e[tag=cu.dataStorage.base] at @s store result score #result cu.dataStorage run kill @e[tag=cu.dataStorage.container,distance=..0.05]
execute if entity @s[type=minecraft:player] if score #result cu.dataStorage matches 1.. run tellraw @s ["Deleted ",{"score":{"name":"#result","objective":"cu.dataStorage"}}," data container(s)"]
execute if entity @s[type=minecraft:player] if score #result cu.dataStorage matches 0 run tellraw @s ["",{"text":"No data container was found","color":"red"}]
