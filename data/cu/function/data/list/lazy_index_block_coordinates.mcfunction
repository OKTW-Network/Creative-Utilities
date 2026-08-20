# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  If $(index) is being abused, only the latest match in the list will result.
data remove storage cu:io data.list.lazy_index_block_coordinates.Result
$return run data modify storage cu:io data.list.lazy_index_block_coordinates.Result set from block $(x) $(y) $(z) $(path)[$(index)]
