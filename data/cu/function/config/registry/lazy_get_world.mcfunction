# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io config.registry.lazy_get_world.Result
$return run data modify storage cu:io config.registry.lazy_get_world.Result set from storage cu:cache config_registry[{namespace:'$(namespace)'}].world_catalog