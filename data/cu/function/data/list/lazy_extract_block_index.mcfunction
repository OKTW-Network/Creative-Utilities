# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  Only the latest match in the list will result when abusing $(index), and all matches will still be removed.
data remove storage cu:io data.list.lazy_extract_block_index.Result
$data modify storage cu:io data.list.lazy_extract_block_index.Result set from block $(coordinates) $(path)[$(index)]
$return run data remove block $(coordinates) $(path)[$(index)]
