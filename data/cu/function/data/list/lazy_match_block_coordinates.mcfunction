# Reminder
#  The result cannot be reset if the function failed to instantiate.
data modify storage cu:io data.list.lazy_select_block_coordinates.Result set value []
$return run data modify storage cu:io data.list.lazy_select_block_coordinates.Result append from block $(x) $(y) $(z) $(path)[$(tags)]
