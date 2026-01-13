scoreboard players set #1 temp 0
execute store result score #1 temp if data storage cu:internal config.register.current_entry.specification.value[]
execute unless score #1 temp matches 2.. run return fail
data modify storage cu:internal config.register.entry_result.specification merge value {type:'selection',value:[],select_min:1,select_max:1}
data modify storage cu:internal config.register.entry_result.specification.value set from storage cu:internal config.register.current_entry.specification.value
scoreboard players set #2 temp 1
execute if data storage cu:internal config.register.current_entry.specification.select_min store result score #2 temp run data get storage cu:internal config.register.current_entry.specification.select_min
scoreboard players set #3 temp 1
execute if data storage cu:internal config.register.current_entry.specification.select_max store result score #3 temp run data get storage cu:internal config.register.current_entry.specification.select_max
scoreboard players set #4 temp 1
scoreboard players operation #3 temp > #4 temp
scoreboard players operation #3 temp < #1 temp
scoreboard players operation #2 temp > #4 temp
scoreboard players operation #2 temp < #3 temp
execute store result storage cu:internal config.register.entry_result.specification.select_min int 1 run scoreboard players get #2 temp
execute store result storage cu:internal config.register.entry_result.specification.select_max int 1 run scoreboard players get #3 temp

data modify storage cu:io config.verify_request.Input.specification set from storage cu:internal config.register.entry_result.specification
data modify storage cu:io config.verify_request.Input.request set from storage cu:internal config.register.current_entry.specification.default
execute if function cu:config/verify_request/main run return run data modify storage cu:internal config.register.entry_result.specification.default set from storage cu:internal config.register.current_entry.specification.default
scoreboard players set #data.digit.sequence.Input.base cu-io 0
scoreboard players set #data.digit.sequence.Input.value cu-io 1
scoreboard players set #data.digit.sequence.Option.operation cu-io 0
execute store result score #data.digit.sequence.Option.count cu-io run data get storage cu:internal config.register.entry_result.specification.select_min
scoreboard players remove #data.digit.sequence.Option.count cu-io 1
function cu:data/digit/sequence/main
data modify storage cu:internal config.register.entry_result.specification.default set from storage cu:io data.digit.sequence.Result