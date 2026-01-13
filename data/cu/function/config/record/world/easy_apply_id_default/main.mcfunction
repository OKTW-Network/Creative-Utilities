scoreboard players set #config.record.world.easy_apply_id_default.FUNCTION_STAGE cu-io 0
execute unless function cu:config/record/_func/validate_input_namespace run return run function cu:config/record/world/easy_apply_id_default/_return_fail
execute unless function cu:config/record/_func/validate_input_id run return run function cu:config/record/world/easy_apply_id_default/_return_fail
# Option.force_apply
#  0 : Do not apply this option.
#  1 : Forcibly apply the value from the default.
execute unless score #config.record.Option.force_apply cu-io matches 0..1 run scoreboard players set #config.record.Option.force_apply cu-io 0
# (world.)Option.pool
#  0 : Pick one from all the pools.
#  1 : Specify the "world" pool.
#  2 : Specify the "player" pool.
execute unless score #config.record.world.Option.pool cu-io matches 0..2 run scoreboard players set #config.record.world.Option.pool cu-io 0

scoreboard players set #config.record.world.easy_apply_id_default.FUNCTION_STAGE cu-io 1
execute unless function cu:config/record/world/easy_apply_id_default/_func/apply/main run return run function cu:config/record/world/easy_apply_id_default/_return_fail

scoreboard players set #config.record.world.easy_apply_id_default.FUNCTION_STAGE cu-io -1
function cu:config/record/world/easy_apply_id_default/_reset_function

return 1