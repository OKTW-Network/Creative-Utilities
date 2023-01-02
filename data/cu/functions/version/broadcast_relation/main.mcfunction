data remove storage cu:version broadcast_relation.result
scoreboard players set #version.broadcast_relation.lock.check_diff cu 0
scoreboard players set #version.broadcast_relation.lock.broadcast cu 0
scoreboard players set #version.broadcast_relation.result.diff cu 0

execute store success score #version.broadcast_relation.lock.check_diff cu if score #version.broadcast_relation.input_1.x cu > #version.broadcast_relation.input_2.x cu run scoreboard players set #version.broadcast_relation.result.diff cu 1
execute if score #version.broadcast_relation.lock.check_diff cu matches 0 store success score #version.broadcast_relation.lock.check_diff cu if score #version.broadcast_relation.input_1.x cu < #version.broadcast_relation.input_2.x cu run scoreboard players set #version.broadcast_relation.result.diff cu -1
execute if score #version.broadcast_relation.lock.check_diff cu matches 0 store success score #version.broadcast_relation.lock.check_diff cu if score #version.broadcast_relation.input_1.y cu > #version.broadcast_relation.input_2.y cu run scoreboard players set #version.broadcast_relation.result.diff cu 2
execute if score #version.broadcast_relation.lock.check_diff cu matches 0 store success score #version.broadcast_relation.lock.check_diff cu if score #version.broadcast_relation.input_1.y cu < #version.broadcast_relation.input_2.y cu run scoreboard players set #version.broadcast_relation.result.diff cu -2
execute if score #version.broadcast_relation.lock.check_diff cu matches 0 store success score #version.broadcast_relation.lock.check_diff cu if score #version.broadcast_relation.input_1.z cu > #version.broadcast_relation.input_2.z cu run scoreboard players set #version.broadcast_relation.result.diff cu 3
execute if score #version.broadcast_relation.lock.check_diff cu matches 0 store success score #version.broadcast_relation.lock.check_diff cu if score #version.broadcast_relation.input_1.z cu < #version.broadcast_relation.input_2.z cu run scoreboard players set #version.broadcast_relation.result.diff cu -3
execute if score #version.broadcast_relation.lock.check_diff cu matches 0 store success score #version.broadcast_relation.lock.check_diff cu if data storage cu:version broadcast_relation.input_1{t:''} unless data storage cu:version broadcast_relation.input_2{t:''} run scoreboard players set #version.broadcast_relation.result.diff cu -4
execute if score #version.broadcast_relation.lock.check_diff cu matches 0 store success score #version.broadcast_relation.lock.check_diff cu unless data storage cu:version broadcast_relation.input_1{t:''} if data storage cu:version broadcast_relation.input_2{t:''} run scoreboard players set #version.broadcast_relation.result.diff cu 4
data modify storage cu:compare input1 set from storage cu:version broadcast_relation.input_1.t
data modify storage cu:compare input2 set from storage cu:version broadcast_relation.input_2.t
function cu:compare/different
execute if score #version.broadcast_relation.lock.check_diff cu matches 0 store success score #version.broadcast_relation.lock.check_diff cu if score #compare.result cu matches 1 unless data storage cu:version broadcast_relation.input_1{t:''} unless data storage cu:version broadcast_relation.input_2{t:''} run scoreboard players set #version.broadcast_relation.result.diff cu 5

execute if score #version.broadcast_relation.input.method cu matches 1 store success score #version.broadcast_relation.lock.broadcast cu if score #version.broadcast_relation.result.diff cu matches 0

scoreboard players operation #version.make_static.input.x cu = #version.broadcast_relation.input_1.x cu
scoreboard players operation #version.make_static.input.y cu = #version.broadcast_relation.input_1.y cu
scoreboard players operation #version.make_static.input.z cu = #version.broadcast_relation.input_1.z cu
data modify storage cu:version make_static.input.t set from storage cu:version broadcast_relation.input_1.t
function cu:version/make_static
execute if score #version.broadcast_relation.result.diff cu matches -4..5 unless score #version.broadcast_relation.result.diff cu matches 0 run function cu:version/broadcast_relation/result-have_relation
execute if score #version.broadcast_relation.result.diff cu matches 0 run function cu:version/broadcast_relation/result-no_relation

execute if score #version.broadcast_relation.lock.broadcast cu matches 0 run tellraw @a [{"text":"","color":"reset"},{"translate":"[%s]:","with":[{"nbt":"broadcast_relation.input.datapack_name","storage":"cu:version","interpret":true}],"color":"yellow","bold":true}," ",{"nbt":"broadcast_relation.result.message","storage":"cu:version","interpret":true}]
execute if score #version.broadcast_relation.lock.broadcast cu matches 0 unless entity @a run function cu:version/broadcast_relation/none_player_broadcast

scoreboard players set #version.broadcast_relation.input_1.x cu 0
scoreboard players set #version.broadcast_relation.input_1.y cu 0
scoreboard players set #version.broadcast_relation.input_1.z cu 0
data modify storage cu:version broadcast_relation.input_1.t set value ''
scoreboard players set #version.broadcast_relation.input_2.x cu 0
scoreboard players set #version.broadcast_relation.input_2.y cu 0
scoreboard players set #version.broadcast_relation.input_2.z cu 0
data modify storage cu:version broadcast_relation.input_2.t set value ''
