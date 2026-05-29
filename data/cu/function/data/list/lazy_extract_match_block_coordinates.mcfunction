# Reminder
#  The result cannot be reset if the function failed to instantiate.
data modify storage cu:io data.list.lazy_extract_match_block_coordinates.Result set value []
$data modify storage cu:io data.list.lazy_extract_match_block_coordinates.Result append from block $(x) $(y) $(z) $(path)[$(tags)]
$return run data remove block $(x) $(y) $(z) $(path)[$(tags)]
