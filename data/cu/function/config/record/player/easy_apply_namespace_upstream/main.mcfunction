scoreboard players set #config.record.player.easy_apply_namespace_upstream.FUNCTION_STAGE cu-io 0
scoreboard players reset #config.record.player.easy_apply_namespace_upstream.Result cu-io
execute unless function cu:config/record/_func/validate_input_namespace run return run function cu:config/record/player/easy_apply_namespace_upstream/_return_fail
# Option.force_apply
#  0 : Do not apply this option.
#  1 : Forcibly apply the value from the default.
execute unless score #config.record.Option.force_apply cu-io matches 0..1 run scoreboard players set #config.record.Option.force_apply cu-io 0

scoreboard players set #config.record.player.easy_apply_namespace_upstream.FUNCTION_STAGE cu-io 1
execute unless function cu:config/record/player/easy_apply_namespace_upstream/_func/get_upstream_content/main run return run function cu:config/record/player/easy_apply_namespace_upstream/_return_fail
function cu:config/record/player/easy_apply_namespace_upstream/_func/apply/main

scoreboard players set #config.record.player.easy_apply_namespace_upstream.FUNCTION_STAGE cu-io -1
function cu:config/record/player/easy_apply_namespace_upstream/_reset_function

return run execute unless score #config.record.player.easy_apply_namespace_upstream.Result cu-io matches 0 run scoreboard players get #config.record.player.easy_apply_namespace_upstream.Result cu-io