execute if score #data.list.find.Option.method cu-io matches 0..1 if function cu:data/list/find/_func/different run function cu:data/list/find/_func/successed
execute if score #data.list.find.Option.method cu-io matches 2..3 if function cu:data/list/find/_func/match_compound run function cu:data/list/find/_func/successed
execute if score #data.list.find.Option.method cu-io matches 4..5 if function cu:data/list/find/_func/match_compound_list run function cu:data/list/find/_func/successed
data remove storage cu:io data.list.find.Input.data[0]
scoreboard players add #data.list.find.counter cu-internal 1
scoreboard players set #data.list.find.stop_recur cu-internal 1
execute if score #data.list.find.Option.count cu-io matches 0 run scoreboard players set #data.list.find.stop_recur cu-internal 0
execute if score #data.list.find.Option.count cu-io matches 1.. unless score #data.list.find.success_count cu-internal = #data.list.find.Option.count cu-io run scoreboard players set #data.list.find.stop_recur cu-internal 0
execute if score #data.list.find.stop_recur cu-internal matches 0 if data storage cu:io data.list.find.Input.data[0] run function cu:data/list/find/_func/find
