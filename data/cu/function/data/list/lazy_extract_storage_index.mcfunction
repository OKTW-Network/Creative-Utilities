# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  Only the latest match in the list will result when abusing $(index), and all matches will still be removed.
data remove storage cu:io data.list.lazy_extract_storage_index.Result
$data modify storage cu:io data.list.lazy_extract_storage_index.Result set from storage $(resource_location) $(path)[$(index)]
$return run data remove storage $(resource_location) $(path)[$(index)]
