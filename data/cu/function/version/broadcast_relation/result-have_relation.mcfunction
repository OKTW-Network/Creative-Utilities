data modify storage cu:temp version.broadcast_relation.static_1 set from storage cu:version make_static.result

scoreboard players operation #version.make_static.input.x cu = #version.broadcast_relation.input_2.x cu
scoreboard players operation #version.make_static.input.y cu = #version.broadcast_relation.input_2.y cu
scoreboard players operation #version.make_static.input.z cu = #version.broadcast_relation.input_2.z cu
data modify storage cu:version make_static.input.t set from storage cu:version broadcast_relation.input_2.t
function cu:version/make_static
data modify storage cu:temp version.broadcast_relation.static_2 set from storage cu:version make_static.result

execute if score #version.broadcast_relation.result.diff cu matches 1..3 run data modify storage cu:temp version.broadcast_relation.arrow set value {"text":" -> ","color":"green"}
execute if score #version.broadcast_relation.result.diff cu matches -3..-1 run data modify storage cu:temp version.broadcast_relation.arrow set value {"text":" -> ","color":"red"}
execute if score #version.broadcast_relation.result.diff cu matches 4 run data modify storage cu:temp version.broadcast_relation.arrow set value {"text":" -> ","color":"light_purple"}
execute if score #version.broadcast_relation.result.diff cu matches -4 run data modify storage cu:temp version.broadcast_relation.arrow set value {"text":" -> ","color":"aqua"}
execute if score #version.broadcast_relation.result.diff cu matches 5 run data modify storage cu:temp version.broadcast_relation.arrow set value {"text":" -> ","color":"blue"}

data modify storage cu:value string.static.input set value [{"text":"Version: "},{"type":"nbt","source":"storage","nbt":"version.broadcast_relation.static_2","storage":"cu:temp","interpret":true},{"type":"nbt","source":"storage","nbt":"version.broadcast_relation.arrow","storage":"cu:temp","interpret":true},{"type":"nbt","source":"storage","nbt":"version.broadcast_relation.static_1","storage":"cu:temp","interpret":true}]
function cu:value/string/static
data modify storage cu:version broadcast_relation.result.message set from storage cu:value string.static.result
