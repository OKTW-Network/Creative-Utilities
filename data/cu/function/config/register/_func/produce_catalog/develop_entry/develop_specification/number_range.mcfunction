execute unless data storage cu:internal config.register.produce_catalog.current_entry.specification.value[0] run return fail
execute unless data storage cu:internal config.register.produce_catalog.current_entry.specification.value[-1] run return fail
data modify storage cu:internal config.register.produce_catalog.entry_in_development.specification merge value {type:'number_range',value:[0,0],display_scale:1.0,display_base_offset:0,display_final_offset:0}
execute store result score #1 temp run data get storage cu:internal config.register.produce_catalog.current_entry.specification.value[0]
execute store result score #2 temp run data get storage cu:internal config.register.produce_catalog.current_entry.specification.value[-1]
execute if score #1 temp = #2 temp run return fail
execute if score #1 temp > #2 temp run scoreboard players operation #1 temp >< #2 temp
execute store result storage cu:internal config.register.produce_catalog.entry_in_development.specification.value[0] int 1 run scoreboard players get #1 temp
execute store result storage cu:internal config.register.produce_catalog.entry_in_development.specification.value[1] int 1 run scoreboard players get #2 temp

execute if data storage cu:internal config.register.produce_catalog.current_entry.specification.display_scale store result storage cu:internal config.register.produce_catalog.entry_in_development.specification.display_scale double 1.0 run data get storage cu:internal config.register.produce_catalog.current_entry.specification.display_scale
execute if data storage cu:internal config.register.produce_catalog.current_entry.specification.display_base_offset store result storage cu:internal config.register.produce_catalog.entry_in_development.specification.display_base_offset int 1 run data get storage cu:internal config.register.produce_catalog.current_entry.specification.display_base_offset
execute if data storage cu:internal config.register.produce_catalog.current_entry.specification.display_final_offset store result storage cu:internal config.register.produce_catalog.entry_in_development.specification.display_final_offset int 1 run data get storage cu:internal config.register.produce_catalog.current_entry.specification.display_final_offset

data modify storage cu:io config.verify_request.Input.specification set from storage cu:internal config.register.produce_catalog.entry_in_development.specification
data modify storage cu:io config.verify_request.Input.request set from storage cu:internal config.register.produce_catalog.current_entry.specification.default
execute if function cu:config/verify_request/main run return run data modify storage cu:internal config.register.produce_catalog.entry_in_development.specification.default set from storage cu:internal config.register.produce_catalog.current_entry.specification.default
return run data modify storage cu:internal config.register.produce_catalog.entry_in_development.specification.default set from storage cu:internal config.register.produce_catalog.entry_in_development.specification.value[0]
