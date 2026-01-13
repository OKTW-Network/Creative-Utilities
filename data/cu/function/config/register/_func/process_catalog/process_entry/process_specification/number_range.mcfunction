execute unless data storage cu:internal config.register.current_entry.specification.value[0] run return run scoreboard players set #config.register.entry_resulting_flag cu-internal 0
execute unless data storage cu:internal config.register.current_entry.specification.value[-1] run return run scoreboard players set #config.register.entry_resulting_flag cu-internal 0
data modify storage cu:internal config.register.entry_result.specification merge value {type:'number_range',value:[0,0],display_scale:1.0,display_base_offset:0,display_final_offset:0}
execute store result score #1 temp run data get storage cu:internal config.register.current_entry.specification.value[0]
execute store result score #2 temp run data get storage cu:internal config.register.current_entry.specification.value[-1]
execute if score #1 temp = #2 temp run return run scoreboard players set #config.register.entry_resulting_flag cu-internal 0
execute if score #1 temp > #2 temp run scoreboard players operation #1 temp >< #2 temp
execute store result storage cu:internal config.register.entry_result.specification.value[0] int 1 run scoreboard players get #1 temp
execute store result storage cu:internal config.register.entry_result.specification.value[1] int 1 run scoreboard players get #2 temp

execute if data storage cu:internal config.register.current_entry.specification.display_scale store result storage cu:internal config.register.entry_result.specification.display_scale double 1.0 run data get storage cu:internal config.register.current_entry.specification.display_scale
execute if data storage cu:internal config.register.current_entry.specification.display_base_offset store result storage cu:internal config.register.entry_result.specification.display_base_offset int 1 run data get storage cu:internal config.register.current_entry.specification.display_base_offset
execute if data storage cu:internal config.register.current_entry.specification.display_final_offset store result storage cu:internal config.register.entry_result.specification.display_final_offset int 1 run data get storage cu:internal config.register.current_entry.specification.display_final_offset

data modify storage cu:io config.verify_request.Input.specification set from storage cu:internal config.register.entry_result.specification
data modify storage cu:io config.verify_request.Input.request set from storage cu:internal config.register.current_entry.specification.default
execute if function cu:config/verify_request/main run return run data modify storage cu:internal config.register.entry_result.specification.default set from storage cu:internal config.register.current_entry.specification.default
data modify storage cu:internal config.register.entry_result.specification.default set from storage cu:internal config.register.entry_result.specification.value[0]