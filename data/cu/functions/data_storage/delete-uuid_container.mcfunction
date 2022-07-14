execute unless score #dataStorage.useScore cu matches 1 store result score #dataStorage.input.UUID0 cu run data get storage cu:data_storage input[0]
execute unless score #dataStorage.useScore cu matches 1 store result score #dataStorage.input.UUID1 cu run data get storage cu:data_storage input[1]
execute unless score #dataStorage.useScore cu matches 1 store result score #dataStorage.input.UUID2 cu run data get storage cu:data_storage input[2]
execute unless score #dataStorage.useScore cu matches 1 store result score #dataStorage.input.UUID3 cu run data get storage cu:data_storage input[3]

execute as @e[tag=cu.dataStorage.container] if score @s dataUUID0 = #dataStorage.input.UUID0 cu if score @s dataUUID1 = #dataStorage.input.UUID1 cu if score @s dataUUID2 = #dataStorage.input.UUID2 cu if score @s dataUUID3 = #dataStorage.input.UUID3 cu run tag @s add cu.dataStorage.delete
execute store result score #dataStorage.result cu run kill @e[tag=cu.dataStorage.delete]

scoreboard players operation #string.input cu = #dataStorage.result cu
function cu:string/plural
tag @s[type=minecraft:player] add self
tellraw @s[tag=self] ["Deleted ",{"score":{"name":"#dataStorage.result","objective":"cu"}}," data container",{"nbt":"plural.result","storage":"cu:string","interpret":false}," that is match ",{"nbt":"input","storage":"cu:data_storage","interpret":false}]
tellraw @a[tag=!self,tag=cu._tag.debugView] [{"selector":"@s"}," >>> Deleted ",{"score":{"name":"#dataStorage.result","objective":"cu"}}," data container",{"nbt":"plural.result","storage":"cu:string","interpret":false}," that is match ",{"nbt":"input","storage":"cu:data_storage","interpret":false}]
tag @s[type=minecraft:player] remove self
