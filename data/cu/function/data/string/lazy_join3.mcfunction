# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  Macros can cause the SNBT escape sequence to apply twice or conflict with something.
#   (See function cu:data/string/lazy_to_string for more information.)
data remove storage cu:io data.string.lazy_join3.Result
$return run data modify storage cu:io data.string.lazy_join3.Result set value '$(string1)$(string2)$(string3)'
