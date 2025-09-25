# Reminder
#  The result cannot be reset if the function failed to instantiate.
scoreboard players reset #player.storage.data.lax_insert_path_value.Result cu-io
execute if entity @s[type=!minecraft:player] run return fail

$data modify storage cu:internal dummy set value {uuid:'',path:'$(path)',index:$(index),value:$(value)}
data modify storage cu:internal dummy.uuid set from entity @s UUID
execute store result score #player.storage.data.lax_insert_path_value.Result cu-io run function cu:player/storage/data/lazy_insert_uuid_path_value with storage cu:internal dummy

return run execute unless score #player.storage.data.lax_insert_path_value.Result cu-io matches 0 run scoreboard players get #player.storage.data.lax_insert_path_value.Result cu-io
