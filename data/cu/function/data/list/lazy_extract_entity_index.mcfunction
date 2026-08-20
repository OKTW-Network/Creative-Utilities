# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  If $(index) is being abused, only the latest match in the list will result, but all matches will still be removed.
data remove storage cu:io data.list.lazy_extract_entity_index.Result
$return run data modify storage cu:io data.list.lazy_extract_entity_index.Result set from entity $(entity) $(path)[$(index)]
$return run data remove entity $(entity) $(path)[$(index)]
