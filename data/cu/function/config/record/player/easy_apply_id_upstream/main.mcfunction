scoreboard players set #config.record.player.easy_apply_id_upstream.FUNCTION_STAGE cu-io 0
execute unless function cu:config/record/_func/validate_input_namespace run return run function cu:config/record/player/easy_apply_id_upstream/_return_fail
execute unless function cu:config/record/_func/validate_input_id run return run function cu:config/record/player/easy_apply_id_upstream/_return_fail
# Option.force_apply
#  0 : Do not apply this option.
#  1 : Forcibly apply the value from the default.
execute unless score #config.record.Option.force_apply cu-io matches 0..1 run scoreboard players set #config.record.Option.force_apply cu-io 0
# (player.)Option.upstream
#  0 : Try to apply the nearest upstream til top level.
#  1 : Specify the world record as the only upstream.
#  2 : Specify the registry default as the only upstream.
execute unless score #config.record.player.Option.upstream cu-io matches 0..1 run scoreboard players set #config.record.Option.force_apply cu-io 0

scoreboard players set #config.record.player.easy_apply_id_upstream.FUNCTION_STAGE cu-io 1
execute unless function cu:config/record/player/easy_apply_id_upstream/_func/apply run return run function cu:config/record/player/easy_apply_id_upstream/_return_fail

scoreboard players set #config.record.player.easy_apply_id_upstream.FUNCTION_STAGE cu-io -1
function cu:config/record/player/easy_apply_id_upstream/_reset_function

return 1