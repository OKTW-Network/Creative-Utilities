# Reminder
#  The result cannot be reset if the function failed to instantiate.
data modify storage cu:io data.list.lazy_extract_block_coordinates_match.Result set value []
$data modify storage cu:io data.list.lazy_extract_block_coordinates_match.Result append from block $(x) $(y) $(z) $(path)[$(tags)]
$return run data remove block $(x) $(y) $(z) $(path)[$(tags)]
