execute store result score @s moveToBlockPos0N run data get entity @s Pos[0]
execute store result score @s moveToBlockPos1N run data get entity @s Pos[1]
execute store result score @s moveToBlockPos2N run data get entity @s Pos[2]

execute unless score @s moveToBlockPos0N = @s moveToBlockPos0L run tag @s add cu.moveToBlock
execute unless score @s moveToBlockPos1N = @s moveToBlockPos1L run tag @s add cu.moveToBlock
execute unless score @s moveToBlockPos2N = @s moveToBlockPos2L run tag @s add cu.moveToBlock
execute if entity @s[tag=cu.moveToBlock] run function #minecraft:move_to_block
tag @s[tag=cu.moveToBlock] remove cu.moveToBlock

scoreboard players operation @s moveToBlockPos0L = @s moveToBlockPos0N
scoreboard players operation @s moveToBlockPos1L = @s moveToBlockPos1N
scoreboard players operation @s moveToBlockPos2L = @s moveToBlockPos2N
