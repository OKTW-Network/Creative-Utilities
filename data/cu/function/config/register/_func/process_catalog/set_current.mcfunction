execute if data storage cu:internal config.register.prior_entry_stack[0][0] run return run function cu:config/register/_func/process_catalog/set_prior_entry_as_current
data modify storage cu:internal config.register.current_entry set from storage cu:internal config.register.current_catalog[0]
data remove storage cu:internal config.register.current_catalog[0]