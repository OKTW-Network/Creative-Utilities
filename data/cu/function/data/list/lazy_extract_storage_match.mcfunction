# Reminder
#  The result cannot be reset if the function failed to instantiate.
data modify storage cu:io data.list.lazy_extract_storage_match.Result set value []
$data modify storage cu:io data.list.lazy_extract_storage_match.Result append from storage $(resource_location) $(path)[$(tags)]
$return run data remove storage $(resource_location) $(path)[$(tags)]
