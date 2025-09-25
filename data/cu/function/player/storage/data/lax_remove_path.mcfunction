# Reminder
#  The result cannot be reset if the function failed to instantiate.
scoreboard players reset #player.storage.data.lax_remove_path.Result cu-io
execute if entity @s[type=!minecraft:player] run return fail

$data modify storage cu:internal dummy set value {uuid:'',path:'$(path)'}
data modify storage cu:internal dummy.uuid set from entity @s UUID
execute store result score #player.storage.data.lax_remove_path.Result cu-io run function cu:player/storage/data/lazy_remove_uuid_path with storage cu:internal dummy

return run execute unless score #player.storage.data.lax_remove_path.Result cu-io matches 0 run scoreboard players get #player.storage.data.lax_remove_path.Result cu-io
