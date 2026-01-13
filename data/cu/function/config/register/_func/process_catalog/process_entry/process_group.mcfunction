data modify storage cu:internal config.register.entry_result merge value {type:'group'}
data modify storage cu:internal config.register.prior_entry_stack prepend value []
data modify storage cu:internal config.register.prior_entry_stack[0] append from storage cu:internal config.register.current_entry.group[]
data modify storage cu:internal config.register.entry_id_key_stack append value {}
data modify storage cu:internal config.register.group_path append from storage cu:internal config.register.entry_result.id
scoreboard players set #config.register.entry_resulting_flag cu-internal 2