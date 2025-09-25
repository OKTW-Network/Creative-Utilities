# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io data.lazy_get_storage_path.Result
$return run data modify storage cu:io data.lazy_get_storage_path.Result set from storage $(namespace) $(path)