execute store result bossbar cu:uips value run scoreboard players get #uips tickCounter

execute if score #uips tickCounter matches 20 as @a run scoreboard players operation @s useItemPerSec = @s useItemCount
execute if score #uips tickCounter matches 20 run scoreboard players set @a useItemCount 0

scoreboard players add #uips tickCounter 1
execute if score #uips tickCounter matches 21 run scoreboard players set #uips tickCounter 1
