data modify storage cu:internal dummy set value {target:''}
data modify storage cu:internal dummy.target set from storage cu:io entity.easy_kill_target.Input[0]
data remove storage cu:io entity.easy_kill_target.Input[0]
execute store result score #1 cu-internal run function cu:entity/lazy_kill_target with storage cu:internal dummy
scoreboard players operation #entity.easy_kill_target.Result cu-io += #1 cu-internal
execute if data storage cu:io entity.easy_kill_target.Input[0] run function cu:entity/easy_kill_target/_func/recur_kill_target
