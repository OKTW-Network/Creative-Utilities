execute unless score #setup_condition cu-meta matches 2 run return fail

# execute as @e[type=minecraft:marker,tag=cu.worker] at @s run function cu:worker/tick
execute as @a at @s run function cu:player/tick
