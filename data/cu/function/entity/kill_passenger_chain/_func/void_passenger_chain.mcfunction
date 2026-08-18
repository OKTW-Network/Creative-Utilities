execute on passengers run function cu:entity/kill_passenger_chain/_func/void_passenger_chain
execute store success score #1 cu-internal run function cu:entity/void
scoreboard players operation #entity.kill_passenger_chain.Result cu-io += #1 cu-internal
