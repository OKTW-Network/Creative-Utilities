scoreboard players set #player.storage.new.FUNCTION_STAGE cu-io 0
scoreboard players reset #player.storage.new.Result cu-io
execute if entity @s[type=!minecraft:player] run return fail

scoreboard players set #player.storage.new.FUNCTION_STAGE cu-io 1
data modify storage cu:internal dummy set value {uuid:''}
data modify storage cu:internal dummy.uuid set from entity @s UUID
execute store result score #1 temp run function cu:player/storage/lazy_query_uuid with storage cu:internal dummy
execute if score #1 temp matches 1.. run return fail

scoreboard players set #player.storage.new.FUNCTION_STAGE cu-io 2
data modify storage cu:internal dummy set value {uuid:'',data:{}}
data modify storage cu:internal dummy.uuid set from entity @s UUID
execute store result score #player.storage.new.Result cu-io run data modify storage cu:storage player append from storage cu:internal dummy

scoreboard players set #player.storage.new.FUNCTION_STAGE cu-io -1
return run execute unless score #player.storage.new.Result cu-io matches 0 run scoreboard players get #player.storage.new.Result cu-io
