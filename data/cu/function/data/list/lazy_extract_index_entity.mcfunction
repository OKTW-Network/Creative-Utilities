# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  Only the latest match in the list will result when abusing $(index), and all matches will still be removed.
data remove storage cu:io data.list.lazy_extract_index_entity.Result
$execute as $(target) run data modify storage cu:io data.list.lazy_extract_index_entity.Result set from entity @s $(path)[$(index)]
$return run execute as $(target) run data remove entity @s $(path)[$(index)]
