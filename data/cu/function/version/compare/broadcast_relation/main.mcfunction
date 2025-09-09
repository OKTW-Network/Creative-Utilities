data remove storage cu:io version.compare.broadcast_relation.Result
function cu:version/compare/_func/normalize_input
execute unless score #version.compare.broadcast_relation.Option.suppress_identical cu-io matches 0..1 run scoreboard players set #version.compare.broadcast_relation.Option.suppress_identical cu-io 0

execute store result score #version.compare.broadcast_relation.diff cu-internal run function cu:version/compare/_func/relation
execute if score #version.compare.broadcast_relation.Option.suppress_identical cu-io matches 1 if score #version.compare.broadcast_relation.diff cu-internal matches 1 run return 0

scoreboard players set #1 temp 0
execute if data storage cu:io version.compare.Input.1{version_tag:''} run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run data modify storage cu:internal version.compare.broadcast_relation.unsolved_input_1 set value {"translate":"%s.%s.%s","with":[{"type":"score","score":{"name":"#version.compare.Input.1.version_x","objective":"cu-io"}},{"type":"score","score":{"name":"#version.compare.Input.1.version_y","objective":"cu-io"}},{"type":"score","score":{"name":"#version.compare.Input.1.version_z","objective":"cu-io"}}]}
execute if score #1 temp matches 0 run data modify storage cu:internal version.compare.broadcast_relation.unsolved_input_1 set value {"translate":"%s.%s.%s-%s","with":[{"type":"score","score":{"name":"#version.compare.Input.1.version_x","objective":"cu-io"}},{"type":"score","score":{"name":"#version.compare.Input.1.version_y","objective":"cu-io"}},{"type":"score","score":{"name":"#version.compare.Input.1.version_z","objective":"cu-io"}},{"type":"nbt","source":"storage","nbt":"version.compare.Input.1.version_tag","storage":"cu:io"}]}
scoreboard players set #1 temp 0
execute if data storage cu:io version.compare.Input.2{version_tag:''} run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run data modify storage cu:internal version.compare.broadcast_relation.unsolved_input_2 set value {"translate":"%s.%s.%s","with":[{"type":"score","score":{"name":"#version.compare.Input.2.version_x","objective":"cu-io"}},{"type":"score","score":{"name":"#version.compare.Input.2.version_y","objective":"cu-io"}},{"type":"score","score":{"name":"#version.compare.Input.2.version_z","objective":"cu-io"}}]}
execute if score #1 temp matches 0 run data modify storage cu:internal version.compare.broadcast_relation.unsolved_input_2 set value {"translate":"%s.%s.%s-%s","with":[{"type":"score","score":{"name":"#version.compare.Input.2.version_x","objective":"cu-io"}},{"type":"score","score":{"name":"#version.compare.Input.2.version_y","objective":"cu-io"}},{"type":"score","score":{"name":"#version.compare.Input.2.version_z","objective":"cu-io"}},{"type":"nbt","source":"storage","nbt":"version.compare.Input.2.version_tag","storage":"cu:io"}]}
execute if score #version.compare.broadcast_relation.diff cu-internal matches 1 run data modify storage cu:internal version.compare.broadcast_relation.unsolved_message set value [{"text":"Version: "},{"type":"nbt","source":"storage","nbt":"version.compare.broadcast_relation.unsolved_input_1","storage":"cu:internal","interpret":true}]
execute if score #version.compare.broadcast_relation.diff cu-internal matches 2..6 run function cu:version/compare/broadcast_relation/_func/have_relation

tellraw @a ["",{"translate":"[%s]:","with":[{"type":"nbt","source":"storage","nbt":"version.compare.broadcast_relation.Input.datapack_name","storage":"cu:io","interpret":true}],"color":"yellow","bold":true}," ",{"type":"nbt","source":"storage","nbt":"version.compare.broadcast_relation.unsolved_message","storage":"cu:internal","interpret":true}]
execute unless entity @a run function cu:version/compare/broadcast_relation/_func/none_player_broadcast

function cu:version/compare/_reset_function
data remove storage cu:io version.compare.broadcast_relation.Input.datapack_name
scoreboard players reset #version.compare.broadcast_relation.Option.suppress_identical cu-io
data remove storage cu:internal version.compare.broadcast_relation
scoreboard players reset #version.compare.broadcast_relation.diff cu-internal

return 1
