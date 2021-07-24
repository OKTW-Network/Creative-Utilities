gamerule maxCommandChainLength 2147483647

scoreboard objectives add Config dummy

datapack disable "file/Creative-utilities"
datapack disable "file/Creative-utilities.zip"

execute store result score #cu$fileIsZip Meta run scoreboard players set #cu$fileType Meta 0

execute if score #math$fileType Meta matches 1 store success score #cu$fileType Meta run datapack enable "file/Creative-utilities" after "file/Math-integration"
execute if score #math$fileType Meta matches 0 store success score #cu$fileType Meta run datapack enable "file/Creative-utilities" after "file/Math-integration.zip"
execute unless score #cu$fileType Meta matches 1 if score #math$fileType Meta matches 1 store success score #cu$fileIsZip Meta run datapack enable "file/Creative-utilities.zip" after "file/Math-integration"
execute unless score #cu$fileType Meta matches 1 if score #math$fileType Meta matches 0 store success score #cu$fileIsZip Meta run datapack enable "file/Creative-utilities.zip" after "file/Math-integration.zip"

function cu:dimension/initial

scoreboard players set #cu$setup Meta 1
execute if score #cu$fileType Meta matches 0 if score #cu$fileIsZip Meta matches 0 run scoreboard players set #cu$setup Meta -1
