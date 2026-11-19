data modify storage cu:internal dummy set from storage cu:internal config.register.produce_catalog.stacked_entry_id_keys[-1]
$return run data modify storage cu:internal dummy merge value {'$(key)':1b}
