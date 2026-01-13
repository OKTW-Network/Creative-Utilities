# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io config.record.world.lazy_get_player_namespace.Result
$return run data modify storage cu:io config.record.world.lazy_get_player_namespace.Result set from storage cu:storage world[{id:'cu:player_config'}].data[{namespace:'$(namespace)'}]