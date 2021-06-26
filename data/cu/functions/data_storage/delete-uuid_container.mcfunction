execute unless score #use-score cu.dataStorage matches 1 store result score #input.UUID0 cu.dataStorage run data get storage cu:data_storage input[0]
execute unless score #use-score cu.dataStorage matches 1 store result score #input.UUID1 cu.dataStorage run data get storage cu:data_storage input[1]
execute unless score #use-score cu.dataStorage matches 1 store result score #input.UUID2 cu.dataStorage run data get storage cu:data_storage input[2]
execute unless score #use-score cu.dataStorage matches 1 store result score #input.UUID3 cu.dataStorage run data get storage cu:data_storage input[3]

execute as @e[tag=cu.dataStorage.container] if score @s dataUUID0 = #input.UUID0 cu.dataStorage if score @s dataUUID1 = #input.UUID1 cu.dataStorage if score @s dataUUID2 = #input.UUID2 cu.dataStorage if score @s dataUUID3 = #input.UUID3 cu.dataStorage run kill @s

scoreboard players set #use-score cu.dataStorage 0
