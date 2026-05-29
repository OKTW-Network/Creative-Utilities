# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  Only the latest match in the list will result when abusing $(index).
data remove storage cu:io data.list.lazy_index_storage.Result
$return run data modify storage cu:io data.list.lazy_index_storage.Result set from storage $(namespace) $(path)[$(index)]
