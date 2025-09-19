scoreboard players set #entity.generate_volume_selection_info.FUNCTION_STAGE cu-io 0
data remove storage cu:io entity.generate_volume_selection_info.Result
execute unless score #entity.generate_volume_selection_info.Input.size_x_1e3 cu-io matches 0..16000 run return run function cu:entity/generate_volume_selection_info/_return_fail
execute unless score #entity.generate_volume_selection_info.Input.size_y_1e3 cu-io matches 0..16000 run return run function cu:entity/generate_volume_selection_info/_return_fail
execute unless score #entity.generate_volume_selection_info.Input.size_z_1e3 cu-io matches 0..16000 run return run function cu:entity/generate_volume_selection_info/_return_fail
execute unless score #entity.generate_volume_selection_info.Option.center_x cu-io matches 0..1 run scoreboard players set #entity.generate_volume_selection_info.Option.center_x cu-io 0
execute unless score #entity.generate_volume_selection_info.Option.center_y cu-io matches 0..1 run scoreboard players set #entity.generate_volume_selection_info.Option.center_y cu-io 0
execute unless score #entity.generate_volume_selection_info.Option.center_z cu-io matches 0..1 run scoreboard players set #entity.generate_volume_selection_info.Option.center_z cu-io 0
execute unless score #entity.generate_volume_selection_info.Option.offset_x_1e3 cu-io matches 0..16000 run scoreboard players set #entity.generate_volume_selection_info.Option.offset_x_1e3 cu-io 0
execute unless score #entity.generate_volume_selection_info.Option.offset_y_1e3 cu-io matches 0..16000 run scoreboard players set #entity.generate_volume_selection_info.Option.offset_y_1e3 cu-io 0
execute unless score #entity.generate_volume_selection_info.Option.offset_z_1e3 cu-io matches 0..16000 run scoreboard players set #entity.generate_volume_selection_info.Option.offset_z_1e3 cu-io 0

scoreboard players set #entity.generate_volume_selection_info.FUNCTION_STAGE cu-io 1
data modify storage cu:io entity.generate_volume_selection_info.Result set value {size_x:0f,size_y:0f,size_z:0f,x_1:0f,y_1:0f,z_1:0f,x_2:0f,y_2:0f,z_2:0f}

scoreboard players operation #entity.generate_volume_selection_info.size cu-internal = #entity.generate_volume_selection_info.Input.size_x_1e3 cu-io
scoreboard players operation #entity.generate_volume_selection_info.center cu-internal = #entity.generate_volume_selection_info.Option.center_x cu-io
scoreboard players operation #entity.generate_volume_selection_info.offset cu-internal = #entity.generate_volume_selection_info.Option.offset_x_1e3 cu-io
function cu:entity/generate_volume_selection_info/_func/process
execute store result storage cu:io entity.generate_volume_selection_info.Result.size_x float 0.00001 run scoreboard players get #entity.generate_volume_selection_info.size cu-internal
execute store result storage cu:io entity.generate_volume_selection_info.Result.x_1 float 0.00001 run scoreboard players get #entity.generate_volume_selection_info.pos_1 cu-internal
execute store result storage cu:io entity.generate_volume_selection_info.Result.x_2 float 0.00001 run scoreboard players get #entity.generate_volume_selection_info.pos_2 cu-internal

scoreboard players operation #entity.generate_volume_selection_info.size cu-internal = #entity.generate_volume_selection_info.Input.size_y_1e3 cu-io
scoreboard players operation #entity.generate_volume_selection_info.center cu-internal = #entity.generate_volume_selection_info.Option.center_y cu-io
scoreboard players operation #entity.generate_volume_selection_info.offset cu-internal = #entity.generate_volume_selection_info.Option.offset_y_1e3 cu-io
function cu:entity/generate_volume_selection_info/_func/process
execute store result storage cu:io entity.generate_volume_selection_info.Result.size_y float 0.00001 run scoreboard players get #entity.generate_volume_selection_info.size cu-internal
execute store result storage cu:io entity.generate_volume_selection_info.Result.y_1 float 0.00001 run scoreboard players get #entity.generate_volume_selection_info.pos_1 cu-internal
execute store result storage cu:io entity.generate_volume_selection_info.Result.y_2 float 0.00001 run scoreboard players get #entity.generate_volume_selection_info.pos_2 cu-internal

scoreboard players operation #entity.generate_volume_selection_info.size cu-internal = #entity.generate_volume_selection_info.Input.size_z_1e3 cu-io
scoreboard players operation #entity.generate_volume_selection_info.center cu-internal = #entity.generate_volume_selection_info.Option.center_z cu-io
scoreboard players operation #entity.generate_volume_selection_info.offset cu-internal = #entity.generate_volume_selection_info.Option.offset_z_1e3 cu-io
function cu:entity/generate_volume_selection_info/_func/process
execute store result storage cu:io entity.generate_volume_selection_info.Result.size_z float 0.00001 run scoreboard players get #entity.generate_volume_selection_info.size cu-internal
execute store result storage cu:io entity.generate_volume_selection_info.Result.z_1 float 0.00001 run scoreboard players get #entity.generate_volume_selection_info.pos_1 cu-internal
execute store result storage cu:io entity.generate_volume_selection_info.Result.z_2 float 0.00001 run scoreboard players get #entity.generate_volume_selection_info.pos_2 cu-internal

scoreboard players set #entity.generate_volume_selection_info.FUNCTION_STAGE cu-io -1
function cu:entity/generate_volume_selection_info/_reset_function

return run execute if data storage cu:io entity.generate_volume_selection_info.Result
