# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  Although it is possible, this macro is not designed for customization of the `/execute` command.
#  If $(entity) is a target selector, only the first entity is affected.
data remove storage cu:io data.lazy_get_entity_path.Result
$return run execute as $(entity) run data modify storage cu:io data.lazy_get_entity_path.Result set from entity @s $(path)
