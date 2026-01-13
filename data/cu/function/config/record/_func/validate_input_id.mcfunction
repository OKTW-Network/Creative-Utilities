data modify storage cu:internal dummy set value ''
data modify storage cu:internal dummy set string storage cu:io config.record.Input.id
data modify storage cu:io config.record.Input.id set from storage cu:internal dummy
execute if data storage cu:io config.record.Input{id:''} run return fail
return 1