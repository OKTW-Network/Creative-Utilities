scoreboard players set #config.record.world.easy_apply_namespace_default.FUNCTION_STAGE cu-io 0
scoreboard players reset #config.record.world.easy_apply_namespace_default.Result cu-io
execute unless function cu:config/record/_func/validate_input_namespace run return run function cu:config/record/world/easy_apply_namespace_default/_return_fail
# Option.force_apply
#  0 : Do not apply this option.
#  1 : Forcibly apply the value from the default.
execute unless score #config.record.Option.force_apply cu-io matches 0..1 run scoreboard players set #config.record.Option.force_apply cu-io 0
# (world.)Option.pool
#  0 : Apply to all the pools.
#  1 : Only apply to the "world" pool.
#  2 : Only apply to the "player" pool.
execute unless score #config.record.world.Option.pool cu-io matches 0..2 run scoreboard players set #config.record.world.Option.pool cu-io 0

scoreboard players set #config.record.world.easy_apply_namespace_default.FUNCTION_STAGE cu-io 1
execute unless function cu:config/record/world/easy_apply_namespace_default/_func/get_namespace_content/main run return run function cu:config/record/world/easy_apply_namespace_default/_return_fail
function cu:config/record/world/easy_apply_namespace_default/_func/apply/main

scoreboard players set #config.record.world.easy_apply_namespace_default.FUNCTION_STAGE cu-io -1
function cu:config/record/world/easy_apply_namespace_default/_reset_function

return run execute unless score #config.record.world.easy_apply_namespace_default.Result cu-io matches 0 run scoreboard players get #config.record.world.easy_apply_namespace_default.Result cu-io