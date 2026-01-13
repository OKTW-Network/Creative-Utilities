scoreboard players set #config.record.player.easy_apply_id_request.FUNCTION_STAGE cu-io 0
execute unless function cu:config/record/_func/validate_input_namespace run return run function cu:config/record/player/easy_apply_id_request/_return_fail
execute unless function cu:config/record/_func/validate_input_id run return run function cu:config/record/player/easy_apply_id_request/_return_fail
# Option.force_apply
#  0 : Do not apply this option.
#  1 : Forcibly apply the value from the default.
execute unless score #config.record.Option.force_apply cu-io matches 0..1 run scoreboard players set #config.record.Option.force_apply cu-io 0

scoreboard players set #config.record.player.easy_apply_id_request.FUNCTION_STAGE cu-io 1
execute unless function cu:config/record/player/easy_apply_id_request/_func/apply run return run function cu:config/record/player/easy_apply_id_request/_return_fail

scoreboard players set #config.record.player.easy_apply_id_request.FUNCTION_STAGE cu-io -1
function cu:config/record/player/easy_apply_id_request/_reset_function

return 1