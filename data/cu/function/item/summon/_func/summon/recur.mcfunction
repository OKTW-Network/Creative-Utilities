function cu:item/summon/_func/summon/summon
data remove storage cu:io item.summon.Input[0]
execute if data storage cu:io item.summon.Input[0] run function cu:item/summon/_func/summon/recur
