execute store result score #1 temp run tag @e[tag=cu-io.entity.target,type=minecraft:marker] remove cu-io.entity.target
execute store result score #1 temp run tag @e[tag=cu-io.entity.target,type=#minecraft:displays] remove cu-io.entity.target
scoreboard players operation entity.target.filter.marker_and_display.Result cu-io += #1 temp
