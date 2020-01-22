execute if score #uips CreativeUtility matches 0 run tellraw @s ["",{"text":"[Creative Utilities]: ","bold":true,"color":"yellow"},{"text":"UIPS: "},{"text":"Detection start!"}]
execute if score #uips CreativeUtility matches 1 run tellraw @s ["",{"text":"[Creative Utilities]: ","bold":true,"color":"yellow"},{"text":"UIPS: "},{"text":"Detection restart!"}]
scoreboard players set #uips tickCounter 1
scoreboard players set @a UIPSCount 0
scoreboard players reset @a UIPS
scoreboard objectives setdisplay sidebar UIPS
bossbar set cu:uips visible true
scoreboard players set #uips CreativeUtility 1
