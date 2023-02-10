execute as @e[tag=cu.dataStorage.base] at @s store result score #dataStorage.result cu run kill @e[tag=cu.dataStorage.container,distance=..0.05]

scoreboard players operation #string.plural.input cu = #dataStorage.result cu
function cu:value/string/plural
tag @s[type=minecraft:player] add self
tellraw @s[tag=self] ["Deleted ",{"score":{"name":"#dataStorage.result","objective":"cu"}}," data container",{"nbt":"string.plural.result","storage":"cu:value","interpret":false}]
tellraw @a[tag=!self,tag=cu._tag.listenDebugMessage] [{"selector":"@s"}," >>> Deleted ",{"score":{"name":"#dataStorage.result","objective":"cu"}}," data container",{"nbt":"string.plural.result","storage":"cu:value","interpret":false}]
tag @s[type=minecraft:player] remove self
