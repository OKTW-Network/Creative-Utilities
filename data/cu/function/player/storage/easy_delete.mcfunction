scoreboard players set #player.storage.easy_delete.FUNCTION_STAGE cu-io 0
scoreboard players reset #player.storage.easy_delete.Result cu-io
execute if entity @s[type=!minecraft:player] run return fail

scoreboard players set #player.storage.easy_delete.FUNCTION_STAGE cu-io 1
data modify storage cu:internal dummy set value {uuid:''}
data modify storage cu:internal dummy.uuid set from entity @s UUID
execute store result score #player.storage.easy_delete.Result cu-io run function cu:player/storage/lazy_delete_uuid with storage cu:internal dummy

scoreboard players set #player.storage.easy_delete.FUNCTION_STAGE cu-io -1
return run execute unless score #player.storage.easy_delete.Result cu-io matches 0 run scoreboard players get #player.storage.easy_delete.Result cu-io
