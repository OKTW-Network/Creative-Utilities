scoreboard players set #world_storage.new.FUNCTION_STAGE cu-io 0
scoreboard players reset #world_storage.new.Result cu-io
execute unless function cu:world_storage/_func/validate_input run return run function cu:world_storage/_return_fail

scoreboard players set #world_storage.new.FUNCTION_STAGE cu-io 1
execute if function cu:world_storage/_func/query run return run function cu:world_storage/_return_fail

scoreboard players set #world_storage.new.FUNCTION_STAGE cu-io 2
data modify storage cu:internal dummy set value {id:'',data:{}}
data modify storage cu:internal dummy.id set from storage cu:io world_storage.Input.id
execute store result score #world_storage.new.Result cu-io run data modify storage cu:storage world append from storage cu:internal dummy

scoreboard players set #world_storage.new.FUNCTION_STAGE cu-io -1
function cu:world_storage/_reset_function

return run execute unless score #world_storage.new.Result cu-io matches 0 run scoreboard players get #world_storage.new.Result cu-io
