scoreboard players set #data.compound.filter_match_list.FUNCTION_STAGE cu-io 0
# Result
#  absent : invalid inputs or error
#  []     : items that successfully passed
data remove storage cu:io data.compound.filter_match_list.Result
execute unless data storage cu:io data.compound.filter_match_list.Input.data_list[{}] run return run function cu:data/compound/filter_match_list/_return_fail
execute unless data storage cu:io data.compound.filter_match_list.Input.reference_list[{}] run return run function cu:data/compound/filter_match_list/_return_fail
# Option.match_count
#  0   : all must matches
#  1.. : specify the least number of matches
execute unless score #data.compound.filter_match_list.Option.match_count cu-io matches 0..1 run scoreboard players set #data.compound.filter_match_list.Option.match_count cu-io 0
# Option.exclude
#  0 : do not apply this option
#  1 : excludes successfully passed instead of including
execute unless score #data.compound.filter_match_list.Option.exclude cu-io matches 0..1 run scoreboard players set #data.compound.filter_match_list.Option.exclude cu-io 0

scoreboard players set #data.compound.filter_match_list.FUNCTION_STAGE cu-io 1
scoreboard players set #data.compound.filter_match_list.success_count cu-internal 0
function cu:data/compound/filter_match_list/_func/filter_match_list

scoreboard players set #data.compound.filter_match_list.FUNCTION_STAGE cu-io -1
function cu:data/compound/filter_match_list/_reset_function

return run execute if data storage cu:io data.compound.filter_match_list.Result[]
