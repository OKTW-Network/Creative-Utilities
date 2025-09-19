scoreboard players reset #entity.kill_passenger_chain.Result cu-io
execute unless score #entity.kill_passenger_chain.Option.root_as_origin cu-io matches 0..1 run scoreboard players set #entity.kill_passenger_chain.Option.root_as_origin cu-io 0
execute unless score #entity.kill_passenger_chain.Option.involve_origin cu-io matches 0..1 run scoreboard players set #entity.kill_passenger_chain.Option.involve_origin cu-io 0
execute unless score #entity.kill_passenger_chain.Option.void cu-io matches 0..1 run scoreboard players set #entity.kill_passenger_chain.Option.void cu-io 0

execute if score #entity.kill_passenger_chain.Option.root_as_origin cu-io matches 0 run tag @s add cu-internal.entity.kill_passenger_chain.origin
execute if score #entity.kill_passenger_chain.Option.root_as_origin cu-io matches 1 run function cu:entity/kill_passenger_chain/_func/root_as_origin
execute if score #entity.kill_passenger_chain.Option.void cu-io matches 0 as @e[distance=0..,limit=1,tag=cu-internal.entity.kill_passenger_chain.origin] on passengers run function cu:entity/kill_passenger_chain/_func/kill_passenger_chain
execute if score #entity.kill_passenger_chain.Option.void cu-io matches 1 as @e[distance=0..,limit=1,tag=cu-internal.entity.kill_passenger_chain.origin] on passengers run function cu:entity/kill_passenger_chain/_func/void_passenger_chain
execute if score #entity.kill_passenger_chain.Option.involve_origin cu-io matches 1 if score #entity.kill_passenger_chain.Option.void cu-io matches 0 run function cu:entity/kill_passenger_chain/_func/kill_origin
execute if score #entity.kill_passenger_chain.Option.involve_origin cu-io matches 1 if score #entity.kill_passenger_chain.Option.void cu-io matches 1 run function cu:entity/kill_passenger_chain/_func/void_origin
tag @e remove cu-internal.entity.kill_passenger_chain.origin

scoreboard players reset #entity.kill_passenger_chain.Option.root_as_origin cu-io
scoreboard players reset #entity.kill_passenger_chain.Option.involve_origin cu-io
scoreboard players reset #entity.kill_passenger_chain.Option.void cu-io

return run execute unless score #entity.kill_passenger_chain.Result cu-io matches 0 run scoreboard players get #entity.kill_passenger_chain.Result cu-io
