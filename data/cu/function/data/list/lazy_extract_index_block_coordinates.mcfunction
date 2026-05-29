# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  Only the latest match in the list will result when abusing $(index), and all matches will still be removed.
data remove storage cu:io data.list.lazy_extract_index_block_coordinates.Result
$data modify storage cu:io data.list.lazy_extract_index_block_coordinates.Result set from block $(x) $(y) $(z) $(path)[$(index)]
$return run data remove block $(x) $(y) $(z) $(path)[$(index)]
