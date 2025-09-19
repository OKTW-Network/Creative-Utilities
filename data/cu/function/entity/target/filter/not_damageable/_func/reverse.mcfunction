execute store result score #1 temp run tag @e[tag=cu-io.entity.target,type=#cu:not_damageable] remove cu-io.entity.target
execute store result score #1 temp run tag @e[tag=cu-io.entity.target,nbt={Invulnerable:1b}] remove cu-io.entity.target
scoreboard players operation entity.target.filter.not_damageable.Result cu-io += #1 temp
