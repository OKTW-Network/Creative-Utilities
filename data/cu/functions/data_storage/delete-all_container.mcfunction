execute as @e[tag=cu.dataStorage.base] at @s store result score #dataStorage.result cu run kill @e[tag=cu.dataStorage.container,distance=..0.05]

scoreboard players operation #string.input cu = #dataStorage.result cu
function cu:string/plural
tag @s[type=minecraft:player] add self
tellraw @s[tag=self] ["Deleted ",{"score":{"name":"#dataStorage.result","objective":"cu"}}," data container",{"nbt":"plural.result","storage":"cu:string","interpret":false}]
tellraw @a[tag=!self,tag=cu._tag.debugView] [{"selector":"@s"}," >>> Deleted ",{"score":{"name":"#dataStorage.result","objective":"cu"}}," data container",{"nbt":"plural.result","storage":"cu:string","interpret":false}]
tag @s[type=minecraft:player] remove self
