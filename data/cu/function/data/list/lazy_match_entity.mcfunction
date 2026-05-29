# Reminder
#  The result cannot be reset if the function failed to instantiate.
data modify storage cu:io data.list.lazy_select_entity.Result set value []
$return run execute as $(target) run data modify storage cu:io data.list.lazy_select_entity.Result append from entity @s $(path)[$(tags)]
