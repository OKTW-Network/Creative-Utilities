scoreboard players set #config.record.world.easy_get_namespace.FUNCTION_STAGE cu-io 0
data remove storage cu:io config.record.world.easy_get_namespace.Result
execute unless function cu:config/record/_func/validate_input_namespace run return run function cu:config/record/world/easy_get_namespace/_return_fail
execute unless function cu:config/record/_func/validate_input_id run return run function cu:config/record/world/easy_get_namespace/_return_fail
# (world.)Option.pool
#  0 : Pick one from all the pools.
#  1 : Specify the "world" pool.
#  2 : Specify the "player" pool.
execute unless score #config.record.world.Option.pool cu-io matches 0..2 run scoreboard players set #config.record.world.Option.pool cu-io 0

scoreboard players set #config.record.world.easy_get_namespace.FUNCTION_STAGE cu-io 1
function cu:config/record/world/easy_get_namespace/_func/get/main

scoreboard players set #config.record.world.easy_get_namespace.FUNCTION_STAGE cu-io -1
function cu:config/record/world/_reset_function

return run execute if data storage cu:io config.record.world.easy_get_namespace.Result