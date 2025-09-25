scoreboard players set #player.storage.new.FUNCTION_STAGE cu-io 0
scoreboard players reset #player.storage.new.Result cu-io
execute if entity @s[type=!minecraft:player] run return fail

scoreboard players set #player.storage.new.FUNCTION_STAGE cu-io 1
execute if function cu:player/storage/_func/query run return fail

scoreboard players set #player.storage.new.FUNCTION_STAGE cu-io 2
data modify storage cu:internal dummy set value {uuid:'',data:{}}
data modify storage cu:internal dummy.uuid set from entity @s UUID
execute store result score #player.storage.new.Result cu-io run data modify storage cu:storage player append from storage cu:internal dummy

scoreboard players set #player.storage.new.FUNCTION_STAGE cu-io -1
return run execute unless score #player.storage.new.Result cu-io matches 0 run scoreboard players get #player.storage.new.Result cu-io
