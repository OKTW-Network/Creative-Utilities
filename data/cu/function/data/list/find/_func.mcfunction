data modify storage cu:io data.different.Input.1 set from storage cu:io data.list.find.Input.data[0]
data modify storage cu:io data.different.Input.2 set from storage cu:io data.list.find.Input.target
function cu:data/different/main
execute if score #data.different.Result cu-io matches 0 run scoreboard players add #data.list.find.success_count cu-internal 1
execute if score #data.different.Result cu-io matches 0 run execute store result storage cu:internal dummy int 1 run scoreboard players get #data.list.find.counter cu-internal
execute if score #data.different.Result cu-io matches 0 run data modify storage cu:io data.list.find.Result append from storage cu:internal dummy
data remove storage cu:io data.list.find.Input.data[0]
scoreboard players add #data.list.find.counter cu-internal 1
scoreboard players set #data.list.find.stop_recur cu-internal 1
execute if score #data.list.find.Option.count cu-io matches 0 run scoreboard players set #data.list.find.stop_recur cu-internal 0
execute if score #data.list.find.Option.count cu-io matches 1.. unless score #data.list.find.success_count cu-internal = #data.list.find.Option.count cu-io run scoreboard players set #data.list.find.stop_recur cu-internal 0
execute if score #data.list.find.stop_recur cu-internal matches 0 if data storage cu:io data.list.find.Input.data[0] run function cu:data/list/find/_func
