data modify storage cu:internal dummy set value ''
data modify storage cu:internal dummy set string storage cu:io world_storage.Input.id
data modify storage cu:io world_storage.Input.id set from storage cu:internal dummy
execute if data storage cu:io world_storage.Input{id:''} run return fail

return 1
