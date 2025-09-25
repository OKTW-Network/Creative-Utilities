# Reminder
#  The result cannot be reset if the function failed to instantiate.
data remove storage cu:io player.storage.data.lax_get_path.Result
execute if entity @s[type=!minecraft:player] run return fail

$data modify storage cu:internal dummy set value {uuid:'',path:'$(path)'}
data modify storage cu:internal dummy.uuid set from entity @s UUID
execute store success score #1 temp run function cu:player/storage/data/lazy_get_uuid_path with storage cu:internal dummy
execute if score #1 temp matches 1 run data modify storage cu:io player.storage.data.lax_get_path.Result set from storage cu:io player.storage.data.lazy_get_uuid_path.Result

return run execute if data storage cu:io player.storage.data.lax_get_path.Result
