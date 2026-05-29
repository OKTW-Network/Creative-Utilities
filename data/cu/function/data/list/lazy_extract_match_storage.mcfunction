# Reminder
#  The result cannot be reset if the function failed to instantiate.
data modify storage cu:io data.list.lazy_extract_match_storage.Result set value []
$data modify storage cu:io data.list.lazy_extract_match_storage.Result append from storage $(namespace) $(path)[$(tags)]
$return run data remove storage $(namespace) $(path)[$(tags)]
