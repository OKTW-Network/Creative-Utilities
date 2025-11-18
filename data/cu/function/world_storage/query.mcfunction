scoreboard players set #world_storage.query.FUNCTION_STAGE cu-io 0
scoreboard players reset #world_storage.query.Result cu-io
execute unless function cu:world_storage/_func/validate_input run return run function cu:world_storage/_return_fail

scoreboard players set #world_storage.query.FUNCTION_STAGE cu-io 1
execute store result score #world_storage.query.Result cu-io run function cu:world_storage/_func/query

scoreboard players set #world_storage.query.FUNCTION_STAGE cu-io -1
function cu:world_storage/_reset_function

return run execute unless score #world_storage.query.Result cu-io matches 0 run scoreboard players get #world_storage.query.Result cu-io
