#Abandoned, replaced with `data/list/lazy_append_entity_value`.
# Reminder
#  Although it is possible, this macro is not designed for customization of the `/execute` command.
#  If $(entity) is a target selector, only the first entity is affected.
$return run execute as $(entity) run data modify entity @s $(path) append value $(value)
