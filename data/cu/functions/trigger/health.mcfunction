execute store result score @s healthChangeN run data get entity @s Health 1000000
execute store result score @s healthMaxChangeN run attribute @s generic.max_health get 1000000

execute unless score @s healthChangeN = @s healthChangeL run function #minecraft:health_changed
execute unless score @s healthMaxChangeN = @s healthMaxChangeL run function #minecraft:health_max_changed

scoreboard players operation @s healthChangeL = @s healthChangeN
scoreboard players operation @s healthMaxChangeL = @s healthMaxChangeN
