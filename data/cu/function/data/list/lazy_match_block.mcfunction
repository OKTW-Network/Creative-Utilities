# Reminder
#  The result cannot be reset if the function failed to instantiate.
data modify storage cu:io data.list.lazy_match_block.Result set value []
$return run data modify storage cu:io data.list.lazy_match_block.Result append from block $(coordinates) $(path)[$(tags)]
