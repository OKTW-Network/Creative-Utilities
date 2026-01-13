# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io config.record.world.lazy_get_world_id.Result
$return run data modify storage cu:io config.record.world.lazy_get_world_id.Result set from storage cu:storage world[{id:'cu:world_config'}].data[{namespace:'$(namespace)'}].record[{id:'$(id)'}]