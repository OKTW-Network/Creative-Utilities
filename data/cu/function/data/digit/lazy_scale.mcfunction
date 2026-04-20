# Reminder
#  The result cannot be reset if the function failed to instantiate.
#  Returned value is not as precise as the result value.
data remove storage cu:io data.digit.lazy_scale.Result
data modify storage cu:internal dummy set value 0
$data modify storage cu:internal dummy set value $(value)
$execute store result storage cu:io data.digit.lazy_scale.Result double $(scale) run data get storage cu:internal dummy
return run data get storage cu:io data.digit.lazy_scale.Result
