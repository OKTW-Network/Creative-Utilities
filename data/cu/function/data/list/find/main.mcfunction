scoreboard players set #data.list.find.FUNCTION_STAGE cu-io 0
# Result
#  absent : Invalid input, no matches, or error.
#  []     : The index(es) of matches.
data remove storage cu:io data.list.find.Result
execute unless data storage cu:io data.list.find.Input.data[0] run return run function cu:data/list/find/_return_fail
execute unless data storage cu:io data.list.find.Input.target run return run function cu:data/list/find/_return_fail
# Option.method
#  0 : Identical
#  1 : Different
#  2 : Match compound.
#      Fallback to 0 when "Input.target" is not a compound.
#  3 : Inverted match compound.
#      Fallback to 1 when "Input.target" is not a compound.
#  4 : Match compound list.
#      Fallback to 0 when "Input.target" is not a list that contains at least one compound.
#  5 : Inverted match compound list.
#      Fallback to 1 when "Input.target" is not a list that contains at least one compound.
execute unless score #data.list.find.Option.method cu-io matches 0..5 run scoreboard players set #data.list.find.Option.method cu-io 0
execute if score #data.list.find.Option.method cu-io matches 2..3 unless data storage cu:io data.list.find.Input.target{} run scoreboard players remove #data.list.find.Option.method cu-io 2
execute if score #data.list.find.Option.method cu-io matches 4..5 unless data storage cu:io data.list.find.Input.target[{}] run scoreboard players remove #data.list.find.Option.method cu-io 4
# Option.count
#  0   : Compares the whole input.
#  1.. : Specify the least number of matches.
execute unless score #data.list.find.Option.count cu-io matches 0.. run scoreboard players set #data.list.find.Option.count cu-io 0
# Option.inverted_match_compound_catches_voided
#  0 : Do not apply this option.
#  1 : When the inverted match compound method (3 or 5) is used, treat the voided condition as success.
execute unless score #data.list.find.Option.inverted_match_compound_catches_voided cu-io matches 0..1 run scoreboard players set #data.list.find.Option.inverted_match_compound_catches_voided cu-io 0
# Option.compound_list_match_count
#  0   : All the conditions must succeed.
#  1.. : Specify the least number of successes.
execute unless score #data.list.find.Option.match_compound_list_count cu-io matches 0.. run scoreboard players set #data.list.find.Option.match_compound_list_count cu-io 0

scoreboard players set #data.list.find.FUNCTION_STAGE cu-io 1
scoreboard players set #data.list.find.counter cu-internal 0
scoreboard players set #data.list.find.success_count cu-internal 0
function cu:data/list/find/_func/find

scoreboard players set #data.list.find.FUNCTION_STAGE cu-io -1
function cu:data/list/find/_reset_function

return run execute if data storage cu:io data.list.find.Result[]
