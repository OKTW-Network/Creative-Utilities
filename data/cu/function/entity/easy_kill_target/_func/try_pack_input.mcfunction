execute unless data storage cu:io entity.easy_kill_target.Input run return fail
execute if data storage cu:io entity.easy_kill_target.Input[] run return 2
data modify storage cu:internal dummy set from storage cu:io entity.easy_kill_target.Input
data modify storage cu:io entity.easy_kill_target.Input set value []
data modify storage cu:io entity.easy_kill_target.Input append from storage cu:internal dummy
return 1
