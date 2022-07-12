execute as @e[tag=cu.dataStorage.base,limit=1] at @s store success score #dataStorage.result cu run summon minecraft:marker ~ ~ ~ {Tags:["cu.dataStorage.container","init"]}

execute if score #dataStorage.result cu matches 1.. run tellraw @a[tag=cu._tag.debugView] ["Created data container, UUID: ",{"nbt":"UUID","entity":"@e[tag=cu.dataStorage.container,tag=init,limit=1]","interpret":false}]
execute if score #dataStorage.result cu matches 0 run tellraw @a[tag=cu._tag.debugView] ["",{"text":"Failed to create the data container","color":"red"}]
