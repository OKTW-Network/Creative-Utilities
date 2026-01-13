# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io config.record.player.lax_get_id.Result
$function cu:player/storage/data/lax_get_path {path:'"cu:player_config"[{namespace:"$(namespace)"}].record[{id:"$(id)"}]'}
return run data modify storage cu:io config.record.player.lax_get_id.Result set from storage cu:io player.storage.data.lax_get_path.Result