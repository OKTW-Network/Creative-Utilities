execute if score #load cu.workaround matches 1 in cu:data_temp if block 0 0 0 minecraft:barrel{Items:[{Slot:13b,id:"minecraft:barrier",Count:1b,tag:{CustomData:{cu:{id:"data_temp"}}}}]} if entity @e[tag=cu.data_temp] run function cu:workaround/load
execute if score #load cu.workaround matches 2 if score #cu$workaround.tick.starts_early Config matches 1 run scoreboard players set #load cu.workaround 3
execute if score #load cu.workaround matches 3.. run function cu:workaround/tick
execute if score #load cu.workaround matches 2 run scoreboard players set #load cu.workaround 3
