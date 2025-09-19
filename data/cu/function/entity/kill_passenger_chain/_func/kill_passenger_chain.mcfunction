execute on passengers run function cu:entity/kill_passenger_chain/_func/kill_passenger_chain
execute store success score #1 temp run kill @s
scoreboard players operation #entity.kill_passenger_chain.Result cu-io += #1 temp
