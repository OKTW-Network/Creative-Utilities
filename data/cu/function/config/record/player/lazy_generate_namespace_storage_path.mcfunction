# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io config.record.player.lazy_generate_namespace_storage_path.Result
$return run data modify storage cu:io config.record.player.lazy_generate_namespace_storage_path.Result set value '"cu:player_config"[{namespace:"$(namespace)"}]'