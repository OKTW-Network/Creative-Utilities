# Reminder
#  Irrelevant to `cu:entity/target/`.
#  Although it is possible, this function is not designed for customization of the `/execute` command.
#  Unloaded entities are impossible to manipulate through the vanilla commands.
#  Entities without a hitbox cannot be selected through the volume dimension arguments.
scoreboard players set #entity.easy_kill_target.FUNCTION_STAGE cu-io 0
scoreboard players reset #entity.easy_kill_target.Result cu-io
execute unless function cu:entity/easy_kill_target/_func/try_pack_input run return run function cu:entity/easy_kill_target/_return_fail
data modify storage cu:internal dummy set value []
data modify storage cu:internal dummy append string storage cu:io entity.easy_kill_target.Input[]
data modify storage cu:io entity.easy_kill_target.Input set from storage cu:internal dummy
execute unless data storage cu:io entity.easy_kill_target.Input[] run return run function cu:item/summon/_return_fail
execute unless score #entity.easy_kill_target.Option.void cu-io matches 0..1 run scoreboard players set #entity.easy_kill_target.Option.void cu-io 0

scoreboard players set #entity.easy_kill_target.FUNCTION_STAGE cu-io 1
scoreboard players set #entity.easy_kill_target.Result cu-io 0
execute if score #entity.easy_kill_target.Option.void cu-io matches 0 run function cu:entity/easy_kill_target/_func/recur_kill_target
execute if score #entity.easy_kill_target.Option.void cu-io matches 1 run function cu:entity/easy_kill_target/_func/recur_void_target/main

scoreboard players set #entity.easy_kill_target.FUNCTION_STAGE cu-io -1
function cu:entity/easy_kill_target/_reset_function

return run execute unless score #entity.easy_kill_target.Result cu-io matches 0 run scoreboard players get #entity.easy_kill_target.Result cu-io
