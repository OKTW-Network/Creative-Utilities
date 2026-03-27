scoreboard players set #data.compound.filter_match.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input or error.
#  []     : Item(s) that pass the condition.
data remove storage cu:io data.compound.filter_match.Result
execute unless data storage cu:io data.compound.filter_match.Input.data_list[{}] run return run function cu:data/compound/filter_match/_return_fail
execute unless data storage cu:io data.compound.filter_match.Input.reference{} run return run function cu:data/compound/filter_match/_return_fail
# Option.invert / Option.exclude (abandoned)
#  0 : Do not apply this option.
#       [(O),(X),(O),(X)] => [(O),(O)]
#  1 : Invert the filter, exclude passed; include non-passed.
#       [(O),(X),(O),(X)] => [(X),(X)]
execute if score #data.compound.filter_match.Option.exclude cu-io matches -2147483648..2147483647 run scoreboard players operation #data.compound.filter_match.Option.invert cu-io = #data.compound.filter_match.Option.exclude cu-io
execute unless score #data.compound.filter_match.Option.invert cu-io matches 0..1 run scoreboard players set #data.compound.filter_match.Option.invert cu-io 0

scoreboard players set #data.compound.filter_match.FUNCTION_STAGE cu-io 1
scoreboard players set #data.compound.filter_match.success_count cu-internal 0
function cu:data/compound/filter_match/_func/filter_match

scoreboard players set #data.compound.filter_match.FUNCTION_STAGE cu-io -1
function cu:data/compound/filter_match/_reset_function

return run execute if data storage cu:io data.compound.filter_match.Result[]
