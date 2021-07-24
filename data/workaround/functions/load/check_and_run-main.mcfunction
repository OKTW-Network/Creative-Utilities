execute if score #trigger-load +Workaround matches 1 in cu:data_temp if block 0 0 0 minecraft:barrel{Items:[{Slot:13b,id:"minecraft:barrier",Count:1b,tag:{CustomData:{cu:{id:"data_temp"}}}}]} if entity @e[tag=cu.data_temp] run scoreboard players set #run-load +Workaround 1
execute if score #run-load +Workaround matches 1 run function workaround:load/main
execute if score #run-load +Workaround matches 1 run scoreboard players set #run-load +Workaround 0
