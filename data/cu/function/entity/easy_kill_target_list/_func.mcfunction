data modify storage cu:io entity.easy_kill_target.Input set from storage cu:io entity.easy_kill_target_list.Input[0]
scoreboard players operation #entity.easy_kill_target.Option.void cu-io = #entity.easy_kill_target_list.Option.void cu-io
function cu:entity/easy_kill_target/main
scoreboard players operation #entity.easy_kill_target_list.Result cu-io += #entity.easy_kill_target.Result cu-io
data remove storage cu:io entity.easy_kill_target_list.Input[0]
execute if data storage cu:io entity.easy_kill_target_list.Input[0] run function cu:entity/easy_kill_target_list/_func
