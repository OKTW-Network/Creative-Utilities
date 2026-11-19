data modify storage cu:internal dummy set from storage cu:internal config.register.namespace_id_keys
$return run data modify storage cu:internal dummy merge value {'$(key)':1b}
