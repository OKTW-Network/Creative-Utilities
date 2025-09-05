gamerule maxCommandChainLength 2147483647

datapack disable "file/Creative-Utilities"
datapack disable "file/Creative-Utilities.zip"

execute store result score #cu$fileIsZip Meta run scoreboard players set #cu$fileType Meta 0

execute if score #math$fileType Meta matches 1 store success score #cu$fileType Meta run datapack enable "file/Creative-Utilities" after "file/Math-Integration"
execute if score #math$fileType Meta matches 0 store success score #cu$fileType Meta run datapack enable "file/Creative-Utilities" after "file/Math-Integration.zip"
execute unless score #cu$fileType Meta matches 1 if score #math$fileType Meta matches 1 store success score #cu$fileIsZip Meta run datapack enable "file/Creative-Utilities.zip" after "file/Math-Integration"
execute unless score #cu$fileType Meta matches 1 if score #math$fileType Meta matches 0 store success score #cu$fileIsZip Meta run datapack enable "file/Creative-Utilities.zip" after "file/Math-Integration.zip"

scoreboard players set #cu$setup Meta 1
execute if score #cu$fileType Meta matches 0 if score #cu$fileIsZip Meta matches 0 run scoreboard players set #cu$setup Meta -1
