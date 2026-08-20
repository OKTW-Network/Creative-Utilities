execute unless data storage cu:io item.summon.Input run return fail
execute if data storage cu:io item.summon.Input[] run return 2
data modify storage cu:internal dummy set from storage cu:io item.summon.Input
data modify storage cu:io item.summon.Input set value []
data modify storage cu:io item.summon.Input append from storage cu:internal dummy
return 1
