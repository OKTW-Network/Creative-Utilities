data modify storage cu:internal dummy set value {target:''}
data modify storage cu:internal dummy.target set from storage cu:io entity.easy_kill_target.Input[0]
data remove storage cu:io entity.easy_kill_target.Input[0]
function cu:entity/easy_kill_target/_func/recur_void_target/execute_as_target with storage cu:internal dummy
execute if data storage cu:io entity.easy_kill_target.Input[0] run function cu:entity/easy_kill_target/_func/recur_void_target/main
