data modify storage cu:internal dummy set value ''
data modify storage cu:internal dummy set string storage cu:io config.record.Input.namespace
data modify storage cu:io config.record.Input.namespace set from storage cu:internal dummy
execute if data storage cu:io config.record.Input{namespace:''} run return fail
return 1