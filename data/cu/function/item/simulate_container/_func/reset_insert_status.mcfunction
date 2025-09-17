scoreboard players set #1 temp 0
execute if data storage cu:internal item.simulate_container.insertion_queue[0] run scoreboard players set #1 temp 1
execute if score #1 temp matches 0 run scoreboard players reset #item.simulate_container.insertion_countdown cu-internal
execute if score #1 temp matches 1 store result score #item.simulate_container.insertion_countdown cu-internal run data get storage cu:internal item.simulate_container.insertion_queue[0].shift
