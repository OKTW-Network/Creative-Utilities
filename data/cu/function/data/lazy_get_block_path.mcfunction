# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io data.lazy_get_block_path.Result
$return run data modify storage cu:io data.lazy_get_block_path.Result set from block $(pos) $(path)