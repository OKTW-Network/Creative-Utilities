# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io config.registry.lazy_get_world_id.Result
$return run data modify storage cu:io config.registry.lazy_get_world_id.Result set from storage cu:cache config_registry[{namespace:'$(namespace)'}].world_catalog[{id:'$(id)'}]