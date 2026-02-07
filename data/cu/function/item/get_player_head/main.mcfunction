scoreboard players set #item.get_player_head.FUNCTION_STAGE cu-io 0
# Result
#  absent : Executor type is not minecraft:player, specific position in cu:simulation not loaded, or error.
#  {}     : The result item.
data remove storage cu:io item.get_player_head.Result
execute if entity @s[type=!minecraft:player] run return fail
execute unless function cu:dimension/simulation/primary/check_loaded run return fail

scoreboard players set #item.get_player_head.FUNCTION_STAGE cu-io 1
function cu:dimension/simulation/primary/container_block/reset_inventory
execute at @e[type=minecraft:marker,limit=1,tag=cu-Marker.simulation.container_block] run function cu:item/get_player_head/_func

scoreboard players set #item.get_player_head.FUNCTION_STAGE cu-io -1
return run execute if data storage cu:io item.get_player_head.Result