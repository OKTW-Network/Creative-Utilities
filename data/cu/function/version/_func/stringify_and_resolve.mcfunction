scoreboard players set #1 temp 0
execute if data storage cu:io version.Input{version_tag:''} run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run data modify storage cu:io data.string.resolve_raw.Input set value {"translate":"%s.%s.%s","with":[{"type":"score","score":{"name":"#version.Input.version_x","objective":"cu-io"}},{"type":"score","score":{"name":"#version.Input.version_y","objective":"cu-io"}},{"type":"score","score":{"name":"#version.Input.version_z","objective":"cu-io"}}]}
execute if score #1 temp matches 0 run data modify storage cu:io data.string.resolve_raw.Input set value {"translate":"%s.%s.%s-%s","with":[{"type":"score","score":{"name":"#version.Input.version_x","objective":"cu-io"}},{"type":"score","score":{"name":"#version.Input.version_y","objective":"cu-io"}},{"type":"score","score":{"name":"#version.Input.version_z","objective":"cu-io"}},{"type":"nbt","source":"storage","nbt":"version.Input.version_tag","storage":"cu:io"}]}
function cu:data/string/resolve_raw/main
data modify storage cu:internal version.resolved_input set from storage cu:io data.string.resolve_raw.Result
