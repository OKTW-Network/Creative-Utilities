execute store result score #trigger.moving.newPosX cu run data get entity @s Pos[0] 10
execute store result score #trigger.moving.newPosY cu run data get entity @s Pos[1] 10
execute store result score #trigger.moving.newPosZ cu run data get entity @s Pos[2] 10

execute if entity @s[tag=cu._tag.moving] if score #trigger.moving.newPosX cu = @s cu.trigger.moving.lastPosX if score #trigger.moving.newPosY cu = @s cu.trigger.moving.lastPosY if score #trigger.moving.newPosZ cu = @s cu.trigger.moving.lastPosZ run function cu:trigger/moving/end

scoreboard players set #1 calcu_temp 0
execute if entity @s[tag=!cu._tag.moving] unless score #trigger.moving.newPosX cu = @s cu.trigger.moving.lastPosX run scoreboard players add #1 calcu_temp 1
execute if entity @s[tag=!cu._tag.moving] unless score #trigger.moving.newPosY cu = @s cu.trigger.moving.lastPosY run scoreboard players add #1 calcu_temp 2
execute if entity @s[tag=!cu._tag.moving] unless score #trigger.moving.newPosZ cu = @s cu.trigger.moving.lastPosZ run scoreboard players add #1 calcu_temp 4
execute unless score #1 calcu_temp matches 0 run function cu:trigger/moving/start

scoreboard players operation @s cu.trigger.moving.lastPosX = #trigger.moving.newPosX cu
scoreboard players operation @s cu.trigger.moving.lastPosY = #trigger.moving.newPosY cu
scoreboard players operation @s cu.trigger.moving.lastPosZ = #trigger.moving.newPosZ cu
