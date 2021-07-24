execute as @e[tag=cu.dataStorage.base,limit=1] at @s store success score #result cu.dataStorage run summon minecraft:marker ~ ~ ~ {Tags:["cu.dataStorage.container","init"]}

execute if score #result cu.dataStorage matches 1.. run tellraw @a[tag=cu.debug_view] ["Created data container, UUID: ",{"nbt":"UUID","entity":"@e[tag=cu.dataStorage.container,tag=init,limit=1]","interpret":false}]
execute if score #result cu.dataStorage matches 0 run tellraw @a[tag=cu.debug_view] ["",{"text":"Failed to create the data container","color":"red"}]
