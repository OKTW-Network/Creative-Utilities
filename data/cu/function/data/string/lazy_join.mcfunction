# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io data.string.lazy_join.Result
$return run data modify storage cu:io data.string.lazy_join.Result set value "$(string1)$(string2)$(string3)"