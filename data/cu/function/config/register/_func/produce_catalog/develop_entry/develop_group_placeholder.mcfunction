execute unless data storage cu:internal config.register.produce_catalog.current_entry.group[0] run return fail

data modify storage cu:internal config.register.produce_catalog.entry_in_development merge value {type:'group'}
data modify storage cu:internal config.register.produce_catalog.stacked_entry_group prepend value []
data modify storage cu:internal config.register.produce_catalog.stacked_entry_group[0] append from storage cu:internal config.register.produce_catalog.current_entry.group[]
data modify storage cu:internal config.register.produce_catalog.stacked_entry_id_keys append value {}
data modify storage cu:internal config.register.produce_catalog.stacked_group_path append from storage cu:internal config.register.produce_catalog.entry_in_development.id
scoreboard players set #config.register.produce_catalog.entry_develop_flag cu-internal 2

return 1
