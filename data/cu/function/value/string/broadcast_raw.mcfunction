scoreboard players reset #value.string.broadcast_raw.Result cu-io
execute in cu:simulation unless loaded 0 9 0 run return fail

data modify storage cu:io value.string.resolve_raw.Input set from storage cu:io value.string.broadcast_raw.Input.speaker_name
function cu:value/string/resolve_raw/main
data modify storage cu:io value.string.broadcast_raw.Input.speaker_name set from storage cu:io value.string.resolve_raw.Result
data modify storage cu:io value.string.resolve_raw.Input set from storage cu:io value.string.broadcast_raw.Input.message
function cu:value/string/resolve_raw/main
data modify storage cu:io value.string.broadcast_raw.Input.message set from storage cu:io value.string.resolve_raw.Result
execute in cu:simulation positioned 0 9 0 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cu-dummy.value.string.broadcast_raw","cu-dummy.value.string.broadcast_raw.speaker"],custom_particle:{type:"minecraft:block",block_state:{Name:"minecraft:air"}},Radius:0.0f,WaitTime:0,Duration:0,Passengers:[{id:"minecraft:area_effect_cloud",Tags:["cu-dummy.value.string.broadcast_raw","cu-dummy.value.string.broadcast_raw.message"],custom_particle:{type:"minecraft:block",block_state:{Name:"minecraft:air"}},Radius:0.0f,WaitTime:0,Duration:0}]}
data modify entity @e[tag=cu-dummy.value.string.broadcast_raw.speaker,limit=1] CustomName set from storage cu:io value.string.broadcast_raw.Input.speaker_name
data modify entity @e[tag=cu-dummy.value.string.broadcast_raw.message,limit=1] CustomName set from storage cu:io value.string.broadcast_raw.Input.message
execute as @e[tag=cu-dummy.value.string.broadcast_raw.speaker] run say @e[tag=cu-dummy.value.string.broadcast_raw.message]
kill @e[tag=cu-dummy.value.string.broadcast_raw]

data remove storage cu:io value.string.broadcast_raw.Input.speaker_name
data remove storage cu:io value.string.broadcast_raw.Input.message

return run execute unless score #value.string.broadcast_raw.Result cu-io matches 0 run scoreboard players get #value.string.broadcast_raw.Result cu-io
