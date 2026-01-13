# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io config.registry.lazy_get_namespace.Result
$return run data modify storage cu:io config.registry.lazy_get_namespace.Result set from storage cu:cache config_registry[{namespace:'$(namespace)'}]