gamerule maxCommandChainLength 2147483647

datapack disable "file/Creative-Utilities"
datapack disable "file/Creative-Utilities.zip"

execute store result score #cu$fileIsZip Meta run scoreboard players set #cu$fileType Meta 0

execute store success score #cu$fileType Meta run datapack enable "file/Creative-Utilities" after "vanilla"
execute unless score #cu$fileType Meta matches 1 store success score #cu$fileIsZip Meta run datapack enable "file/Creative-Utilities.zip" after "vanilla"

scoreboard players set #cu$setup Meta 1
execute if score #cu$fileType Meta matches 0 if score #cu$fileIsZip Meta matches 0 run scoreboard players set #cu$setup Meta -1
