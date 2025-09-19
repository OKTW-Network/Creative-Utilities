execute if score #entity.target.filter.limit.Option.sort cu-io matches 0 run tag @e[tag=cu-io.entity.target,tag=!cu-internal.entity.target.filter.limit.1,sort=arbitrary,limit=1] add cu-internal.entity.target.filter.limit.1
execute if score #entity.target.filter.limit.Option.sort cu-io matches 1 run tag @e[tag=cu-io.entity.target,tag=!cu-internal.entity.target.filter.limit.1,sort=nearest,limit=1] add cu-internal.entity.target.filter.limit.1
execute if score #entity.target.filter.limit.Option.sort cu-io matches 2 run tag @e[tag=cu-io.entity.target,tag=!cu-internal.entity.target.filter.limit.1,sort=furthest,limit=1] add cu-internal.entity.target.filter.limit.1
execute if score #entity.target.filter.limit.Option.sort cu-io matches 3 run tag @e[tag=cu-io.entity.target,tag=!cu-internal.entity.target.filter.limit.1,sort=random,limit=1] add cu-internal.entity.target.filter.limit.1
scoreboard players remove #entity.target.filter.limit.recur_countdown cu-internal 1
execute if score #entity.target.filter.limit.recur_countdown cu-internal matches 1.. if entity @e[tag=cu-io.entity.target,tag=!cu-internal.entity.target.filter.limit.1] run function cu:entity/target/filter/limit/_func
