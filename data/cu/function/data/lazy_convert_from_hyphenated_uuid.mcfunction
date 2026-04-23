# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io data.lazy_convert_from_hyphenated_uuid.Result
$return run data modify storage cu:io data.lazy_convert_from_hyphenated_uuid.Result set value uuid('$(hyphenated_uuid)')
