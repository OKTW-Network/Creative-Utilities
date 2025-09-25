scoreboard players set #player.storage.query.FUNCTION_STAGE cu-io 0
scoreboard players reset #player.storage.query.Result cu-io
execute if entity @s[type=!minecraft:player] run return fail

scoreboard players set #player.storage.query.FUNCTION_STAGE cu-io 1
execute store result score #player.storage.query.Result cu-io run function cu:player/storage/_func/query

scoreboard players set #player.storage.query.FUNCTION_STAGE cu-io -1
return run execute unless score #player.storage.query.Result cu-io matches 0 run scoreboard players get #player.storage.query.Result cu-io
