# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  Only the latest match in the list will result when abusing $(index).
data remove storage cu:io data.list.lazy_index_entity.Result
$return run execute as $(target) run data modify storage cu:io data.list.lazy_index_entity.Result set from entity @s $(path)[$(index)]
