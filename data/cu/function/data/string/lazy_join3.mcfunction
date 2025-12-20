# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io data.string.lazy_join3.Result
$return run data modify storage cu:io data.string.lazy_join3.Result set value '$(string1)$(string2)$(string3)'