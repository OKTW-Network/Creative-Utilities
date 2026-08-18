execute as @e[distance=0..,limit=1,tag=cu-internal.entity.kill_passenger_chain.origin] store success score #1 cu-internal run function cu:entity/void
scoreboard players operation #entity.kill_passenger_chain.Result cu-io += #1 cu-internal
