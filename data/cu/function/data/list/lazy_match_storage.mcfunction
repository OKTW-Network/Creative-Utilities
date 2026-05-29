# Reminder
#  The result cannot be reset if the function failed to instantiate.
data modify storage cu:io data.list.lazy_select_storage.Result set value []
$return run data modify storage cu:io data.list.lazy_select_storage.Result append from storage $(namespace) $(path)[$(tags)]
