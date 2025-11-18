# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io player.storage.data.lazy_get_uuid_path.Result
$return run data modify storage cu:io player.storage.data.lazy_get_uuid_path.Result set from storage cu:storage player[{uuid:$(uuid)}].data.$(path)