execute store result score #trigger.moveToBlock.blockX cu run data get entity @s Pos[0] 1
execute store result score #trigger.moveToBlock.blockY cu run data get entity @s Pos[1] 1
execute store result score #trigger.moveToBlock.blockZ cu run data get entity @s Pos[2] 1

scoreboard players set #trigger.moveToBlock cu 0
execute unless score #trigger.moveToBlock.blockX cu = @s cu.trigger.moveToBlock.lastBlockX run scoreboard players add #trigger.moveToBlock cu 1
execute unless score #trigger.moveToBlock.blockY cu = @s cu.trigger.moveToBlock.lastBlockY run scoreboard players add #trigger.moveToBlock cu 2
execute unless score #trigger.moveToBlock.blockZ cu = @s cu.trigger.moveToBlock.lastBlockZ run scoreboard players add #trigger.moveToBlock cu 4
execute unless score #trigger.moveToBlock cu matches 0 run function #minecraft:move_to_block

scoreboard players operation @s cu.trigger.moveToBlock.lastBlockX = #trigger.moveToBlock.blockX cu
scoreboard players operation @s cu.trigger.moveToBlock.lastBlockY = #trigger.moveToBlock.blockY cu
scoreboard players operation @s cu.trigger.moveToBlock.lastBlockZ = #trigger.moveToBlock.blockZ cu
