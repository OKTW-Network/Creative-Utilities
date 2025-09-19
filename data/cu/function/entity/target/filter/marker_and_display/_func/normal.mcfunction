tag @e[tag=cu-io.entity.target,type=minecraft:marker] add cu-internal.entity.target.filter.marker_and_display.1
tag @e[tag=cu-io.entity.target,type=#minecraft:displays] add cu-internal.entity.target.filter.marker_and_display.1
execute store result score entity.target.filter.marker_and_display.Result cu-io run tag @e[tag=!cu-internal.entity.target.filter.marker_and_display.1] remove cu-io.entity.target
tag @e remove cu-internal.entity.target.filter.marker_and_display.1
