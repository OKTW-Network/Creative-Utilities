datapack disable "file/Creative-Utilities"
datapack disable "file/Creative-Utilities.zip"

execute store result score #cu$pack_is_zip Meta run scoreboard players set #cu$pack_is_folder Meta 0

execute store success score #cu$pack_is_folder Meta run datapack enable "file/Creative-Utilities" after "vanilla"
execute unless score #cu$pack_is_folder Meta matches 1 store success score #cu$pack_is_zip Meta run datapack enable "file/Creative-Utilities.zip" after "vanilla"

scoreboard players set #cu$setup Meta 1
execute if score #cu$pack_is_folder Meta matches 0 if score #cu$pack_is_zip Meta matches 0 run scoreboard players set #cu$setup Meta -1
