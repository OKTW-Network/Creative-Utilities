execute as @e[tag=cu.dataStorage.base] at @s store result score #result cu.dataStorage run kill @e[tag=cu.dataStorage.container,distance=..0.05]

scoreboard players operation #input cu.string = #result cu.dataStorage
function cu:string/plural
tag @s[type=minecraft:player] add self
tellraw @s[tag=self] ["Deleted ",{"score":{"name":"#result","objective":"cu.dataStorage"}}," data container",{"nbt":"plural.result","storage":"cu:string","interpret":false}]
tellraw @a[tag=!self,tag=cu.debug_view] [{"selector":"@s"}," >>> Deleted ",{"score":{"name":"#result","objective":"cu.dataStorage"}}," data container",{"nbt":"plural.result","storage":"cu:string","interpret":false}]
tag @s[type=minecraft:player] remove self
