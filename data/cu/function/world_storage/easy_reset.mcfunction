scoreboard players set #world_storage.easy_reset.FUNCTION_STAGE cu-io 0
scoreboard players reset #world_storage.easy_reset.Result cu-io
execute unless function cu:world_storage/_func/validate_input run return run function cu:world_storage/_return_fail

scoreboard players set #world_storage.easy_reset.FUNCTION_STAGE cu-io 1
data modify storage cu:internal dummy set value {name:''}
data modify storage cu:internal dummy.name set from storage cu:io world_storage.Input.name
function cu:world_storage/lazy_delete_name with storage cu:internal dummy
data modify storage cu:internal dummy set value {name:'',data:{}}
data modify storage cu:internal dummy.name set from storage cu:io world_storage.Input.name
execute store result score #world_storage.easy_reset.Result cu-io run data modify storage cu:storage world append from storage cu:internal dummy

scoreboard players set #world_storage.easy_reset.FUNCTION_STAGE cu-io -1
function cu:world_storage/_reset_function

return run execute unless score #world_storage.easy_reset.Result cu-io matches 0 run scoreboard players get #world_storage.easy_reset.Result cu-io
