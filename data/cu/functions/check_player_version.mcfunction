scoreboard players set #check_player_version.diff cu 0
execute unless score @s cu.meta.version.x = #cu$current_version.x Meta run scoreboard players set #check_player_version.diff cu 1
execute unless score @s cu.meta.version.y = #cu$current_version.y Meta run scoreboard players set #check_player_version.diff cu 1
execute unless score @s cu.meta.version.z = #cu$current_version.z Meta run scoreboard players set #check_player_version.diff cu 1
execute unless data storage meta:cu current_version{t:''} run scoreboard players set #check_player_version.diff cu 2
execute unless data storage meta:cu previous_version{t:''} run scoreboard players set #check_player_version.diff cu 2

# execute if score #check_player_version.diff cu matches 1 run
# execute if score #check_player_version.diff cu matches 2 run

scoreboard players operation @s cu.meta.version.x = #cu$current_version.x Meta
scoreboard players operation @s cu.meta.version.y = #cu$current_version.y Meta
scoreboard players operation @s cu.meta.version.z = #cu$current_version.z Meta
