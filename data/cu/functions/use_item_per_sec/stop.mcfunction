execute if score #uips CreativeUtility matches 1 run tellraw @s ["",{"text":"[Creative Utilities]: ","bold":true,"color":"yellow"},{"text":"UIPS: "},{"text":"Detection stopped!"}]
execute if score #uips CreativeUtility matches 1 run scoreboard players set #uips tickCounter 1
execute if score #uips CreativeUtility matches 1 run scoreboard players set @a useItemCount 0
execute if score #uips CreativeUtility matches 1 run scoreboard players reset @a useItemPerSec
execute if score #uips CreativeUtility matches 1 run scoreboard objectives setdisplay sidebar
execute if score #uips CreativeUtility matches 1 run bossbar set cu:uips visible false
execute if score #uips CreativeUtility matches 1 run scoreboard players set #uips CreativeUtility 0
