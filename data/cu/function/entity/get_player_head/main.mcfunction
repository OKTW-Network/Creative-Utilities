scoreboard players set #entity.get_player_head.FUNCTION_STAGE cu-io 0
data remove storage cu:io entity.get_player_head.Result
execute if entity @s[type=!minecraft:player] run return fail

scoreboard players set #entity.get_player_head.FUNCTION_STAGE cu-io 1
execute summon minecraft:item_display run function cu:entity/get_player_head/_func

scoreboard players set #entity.get_player_head.FUNCTION_STAGE cu-io -1
return run execute if data storage cu:io entity.get_player_head.Result
