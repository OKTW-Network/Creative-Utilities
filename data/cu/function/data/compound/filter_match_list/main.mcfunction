scoreboard players set #data.compound.filter_match_list.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input or error.
#  []     : Item(s) that pass the condition.
data remove storage cu:io data.compound.filter_match_list.Result
execute unless data storage cu:io data.compound.filter_match_list.Input.data_list[{}] run return run function cu:data/compound/filter_match_list/_return_fail
execute unless data storage cu:io data.compound.filter_match_list.Input.reference_list[{}] run return run function cu:data/compound/filter_match_list/_return_fail
# Option.match_count
#  0   : All the references must match.
#  1.. : Specify the least number of matches.
execute unless score #data.compound.filter_match_list.Option.match_count cu-io matches 0..1 run scoreboard players set #data.compound.filter_match_list.Option.match_count cu-io 0
# Option.exclude
#  0 : Do not apply this option.
#       [(O),(X),(O),(X)] => [(O),(O)]
#  1 : Reverse the filter, exclude passed; include non-passed.
#       [(O),(X),(O),(X)] => [(X),(X)]
execute unless score #data.compound.filter_match_list.Option.exclude cu-io matches 0..1 run scoreboard players set #data.compound.filter_match_list.Option.exclude cu-io 0

scoreboard players set #data.compound.filter_match_list.FUNCTION_STAGE cu-io 1
scoreboard players set #data.compound.filter_match_list.success_count cu-internal 0
function cu:data/compound/filter_match_list/_func/filter_match_list

scoreboard players set #data.compound.filter_match_list.FUNCTION_STAGE cu-io -1
function cu:data/compound/filter_match_list/_reset_function

return run execute if data storage cu:io data.compound.filter_match_list.Result[]
