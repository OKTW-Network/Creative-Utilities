execute if data storage cu:version make_static.input{t:''} run data modify storage cu:string toStatic.input set value '{"translate":"%s.%s.%s","with":[{"score":{"name":"#version.make_static.input.x","objective":"cu"}},{"score":{"name":"#version.make_static.input.y","objective":"cu"}},{"score":{"name":"#version.make_static.input.z","objective":"cu"}}]}'
execute unless data storage cu:version make_static.input{t:''} run data modify storage cu:string toStatic.input set value '{"translate":"%s.%s.%s-%s","with":[{"score":{"name":"#version.make_static.input.x","objective":"cu"}},{"score":{"name":"#version.make_static.input.y","objective":"cu"}},{"score":{"name":"#version.make_static.input.z","objective":"cu"}},{"nbt":"make_static.input.t","storage":"cu:version","interpret":true}]}'
function cu:string/convert_to-static
data modify storage cu:version make_static.result set from storage cu:string toStatic.result

scoreboard players set #version.make_static.input.x cu 0
scoreboard players set #version.make_static.input.y cu 0
scoreboard players set #version.make_static.input.z cu 0
data modify storage cu:version make_static.input.t set value ''