# Reminder
#  The result cannot be reset if the function failed to instantiate.
data modify storage cu:io data.list.lazy_extract_entity_match.Result set value []
$data modify storage cu:io data.list.lazy_extract_entity_match.Result append from entity $(entity) $(path)[$(tags)]
$return run data remove entity $(entity) $(path)[$(tags)]
