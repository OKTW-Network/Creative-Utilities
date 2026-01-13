scoreboard players set #config.record.world.easy_remove_id.FUNCTION_STAGE cu-io 0
scoreboard players reset #config.record.world.easy_remove_id.Result cu-io
execute unless function cu:config/record/_func/validate_input_namespace run return run function cu:config/record/world/easy_remove_id/_return_fail
execute unless function cu:config/record/_func/validate_input_id run return run function cu:config/record/world/easy_remove_id/_return_fail
# (world.)Option.pool
#  0 : Remove from all the pools.
#  1 : Specify the "world" pool.
#  2 : Specify the "player" pool.
execute unless score #config.record.world.Option.pool cu-io matches 0..2 run scoreboard players set #config.record.world.Option.pool cu-io 0

scoreboard players set #config.record.world.easy_remove_id.FUNCTION_STAGE cu-io 1
scoreboard players set #config.record.world.easy_remove_id.success_count cu-internal 0
execute store result score #config.record.world.easy_remove_id.Result cu-io run function cu:config/record/world/easy_remove_id/_func/remove/main

scoreboard players set #config.record.world.easy_remove_id.FUNCTION_STAGE cu-io -1
function cu:config/record/world/easy_remove_id/_reset_function

return run execute unless score #config.record.world.easy_remove_id.Result cu-io matches 0 run scoreboard players get #config.record.world.easy_remove_id.Result cu-io