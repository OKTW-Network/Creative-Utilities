scoreboard players set #data.compound.filter_match.FUNCTION_STAGE cu-io 0
# Result
#  absent : invalid inputs or error
#  []     : items that successfully passed
data remove storage cu:io data.compound.filter_match.Result
execute unless data storage cu:io data.compound.filter_match.Input.data_list[{}] run return run function cu:data/compound/filter_match/_return_fail
execute unless data storage cu:io data.compound.filter_match.Input.reference{} run return run function cu:data/compound/filter_match/_return_fail
# Option.exclude
#  0 : do not apply this option
#  1 : excludes successfully passed instead of including
execute unless score #data.compound.filter_match.Option.exclude cu-io matches 0..1 run scoreboard players set #data.compound.filter_match.Option.exclude cu-io 0

scoreboard players set #data.compound.filter_match.FUNCTION_STAGE cu-io 1
scoreboard players set #data.compound.filter_match.success_count cu-internal 0
function cu:data/compound/filter_match/_func/filter_match

scoreboard players set #data.compound.filter_match.FUNCTION_STAGE cu-io -1
function cu:data/compound/filter_match/_reset_function

return run execute if data storage cu:io data.compound.filter_match.Result
