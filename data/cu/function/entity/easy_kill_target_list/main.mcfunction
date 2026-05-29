# Reminder
#  Irrelevant to `cu:entity/target/`.
#  Unloaded entities are impossible to manipulate through the vanilla commands.
#  Entities without a hitbox cannot be selected through the volume dimension arguments.
scoreboard players set #entity.easy_kill_target_list.FUNCTION_STAGE cu-io 0
scoreboard players reset #entity.easy_kill_target_list.Result cu-io
execute unless data storage cu:io entity.easy_kill_target_list.Input[0] run return run function cu:entity/easy_kill_target_list/_return_fail
execute unless score #entity.easy_kill_target_list.Option.void cu-io matches 0..1 run scoreboard players set #entity.easy_kill_target_list.Option.void cu-io 0

scoreboard players set #entity.easy_kill_target_list.FUNCTION_STAGE cu-io 1
scoreboard players set #entity.easy_kill_target_list.Result cu-io 0
function cu:entity/easy_kill_target_list/_func

scoreboard players set #entity.easy_kill_target_list.FUNCTION_STAGE cu-io -1
function cu:entity/easy_kill_target_list/_reset_function

return run execute unless score #entity.easy_kill_target_list.Result cu-io matches 0 run scoreboard players get #entity.easy_kill_target_list.Result cu-io
