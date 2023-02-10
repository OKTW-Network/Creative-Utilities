execute unless score #dataStorage.useScore cu matches 1 store result score #dataStorage.input.UUID0 cu run data get storage cu:data_storage input[0]
execute unless score #dataStorage.useScore cu matches 1 store result score #dataStorage.input.UUID1 cu run data get storage cu:data_storage input[1]
execute unless score #dataStorage.useScore cu matches 1 store result score #dataStorage.input.UUID2 cu run data get storage cu:data_storage input[2]
execute unless score #dataStorage.useScore cu matches 1 store result score #dataStorage.input.UUID3 cu run data get storage cu:data_storage input[3]

execute as @e[tag=cu.dataStorage.container] if score @s cu.dataStorage.UUID.0 = #dataStorage.input.UUID0 cu if score @s cu.dataStorage.UUID.1 = #dataStorage.input.UUID1 cu if score @s cu.dataStorage.UUID.2 = #dataStorage.input.UUID2 cu if score @s cu.dataStorage.UUID.3 = #dataStorage.input.UUID3 cu run tag @s add cu.dataStorage.delete
execute store result score #dataStorage.result cu run kill @e[tag=cu.dataStorage.delete]

scoreboard players operation #string.plural.input cu = #dataStorage.result cu
function cu:value/string/plural
tag @s[type=minecraft:player] add self
tellraw @s[tag=self] ["Deleted ",{"score":{"name":"#dataStorage.result","objective":"cu"}}," data container",{"nbt":"string.plural.result","storage":"cu:value","interpret":false}," that is match ",{"nbt":"input","storage":"cu:data_storage","interpret":false}]
tellraw @a[tag=!self,tag=cu._tag.listenDebugMessage] [{"selector":"@s"}," >>> Deleted ",{"score":{"name":"#dataStorage.result","objective":"cu"}}," data container",{"nbt":"string.plural.result","storage":"cu:value","interpret":false}," that is match ",{"nbt":"input","storage":"cu:data_storage","interpret":false}]
tag @s[type=minecraft:player] remove self
