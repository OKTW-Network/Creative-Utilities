# Reminder
#  Although it is possible, this macro is not designed for customization of the `/execute` command.
#  If $(entity) is a target selector, only the first entity is affected.
$return run execute as $(entity) if data entity @s $(path)
