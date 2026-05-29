# Reminder
#  The result cannot be reset if the function failed to instantiate.
data modify storage cu:io data.list.lazy_extract_match_block.Result set value []
$data modify storage cu:io data.list.lazy_extract_match_block.Result append from block $(coordinates) $(path)[$(tags)]
$return run data remove block $(coordinates) $(path)[$(tags)]
