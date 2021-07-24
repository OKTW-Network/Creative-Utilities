execute unless score #use-score cu.dataStorage matches 1 store result score #input.UUID0 cu.dataStorage run data get storage cu:data_storage input[0]
execute unless score #use-score cu.dataStorage matches 1 store result score #input.UUID1 cu.dataStorage run data get storage cu:data_storage input[1]
execute unless score #use-score cu.dataStorage matches 1 store result score #input.UUID2 cu.dataStorage run data get storage cu:data_storage input[2]
execute unless score #use-score cu.dataStorage matches 1 store result score #input.UUID3 cu.dataStorage run data get storage cu:data_storage input[3]

execute as @e[tag=cu.dataStorage.container] if score @s dataUUID0 = #input.UUID0 cu.dataStorage if score @s dataUUID1 = #input.UUID1 cu.dataStorage if score @s dataUUID2 = #input.UUID2 cu.dataStorage if score @s dataUUID3 = #input.UUID3 cu.dataStorage run tag @s add cu.dataStorage.delete
execute store result score #result cu.dataStorage run kill @e[tag=cu.dataStorage.delete]

scoreboard players operation #input cu.string = #result cu.dataStorage
function cu:string/plural
tag @s[type=minecraft:player] add self
tellraw @s[tag=self] ["Deleted ",{"score":{"name":"#result","objective":"cu.dataStorage"}}," data container",{"nbt":"plural.result","storage":"cu:string","interpret":false}," that is match ",{"nbt":"input","storage":"cu:data_storage","interpret":false}]
tellraw @a[tag=!self,tag=cu.debug_view] [{"selector":"@s"}," >>> Deleted ",{"score":{"name":"#result","objective":"cu.dataStorage"}}," data container",{"nbt":"plural.result","storage":"cu:string","interpret":false}," that is match ",{"nbt":"input","storage":"cu:data_storage","interpret":false}]
tag @s[type=minecraft:player] remove self

scoreboard players set #use-score cu.dataStorage 0
