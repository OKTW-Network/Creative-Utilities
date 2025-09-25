# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io data.lazy_get_entity_path.Result
$return run execute as $(entity) run data modify storage cu:io data.lazy_get_entity_path.Result set from entity @s $(path)