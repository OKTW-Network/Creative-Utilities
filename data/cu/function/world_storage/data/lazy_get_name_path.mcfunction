# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io world_storage.data.lazy_get_name_path.Result
$return run data modify storage cu:io world_storage.data.lazy_get_name_path.Result set from storage cu:storage world[{name:$(name)}].data.$(path)