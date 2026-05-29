# Reminder
#  Irrelevant to `cu:entity/target/`.
#  Unloaded entities are impossible to manipulate through the vanilla commands.
#  Entities without a hitbox cannot be selected through the volume dimension arguments.
scoreboard players set #entity.easy_kill_target.FUNCTION_STAGE cu-io 0
scoreboard players reset #entity.easy_kill_target.Result cu-io
data modify storage cu:internal dummy set value ''
data modify storage cu:internal dummy set string storage cu:io entity.easy_kill_target.Input
data modify storage cu:io entity.easy_kill_target.Input set from storage cu:internal dummy
execute if data storage cu:io entity.easy_kill_target{Input:''} run return run function cu:entity/easy_kill_target/_return_fail
execute unless score #entity.easy_kill_target.Option.void cu-io matches 0..1 run scoreboard players set #entity.easy_kill_target.Option.void cu-io 0

scoreboard players set #entity.easy_kill_target.FUNCTION_STAGE cu-io 1
execute if score #entity.easy_kill_target.Option.void cu-io matches 0 run function cu:entity/easy_kill_target/_func/kill_target with storage cu:io entity.easy_kill_target
execute if score #entity.easy_kill_target.Option.void cu-io matches 1 run function cu:entity/easy_kill_target/_func/void_target/main with storage cu:io entity.easy_kill_target

scoreboard players set #entity.easy_kill_target.FUNCTION_STAGE cu-io -1
function cu:entity/easy_kill_target/_reset_function

return run execute unless score #entity.easy_kill_target.Result cu-io matches 0 run scoreboard players get #entity.easy_kill_target.Result cu-io
