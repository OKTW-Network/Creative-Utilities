tag @e[tag=cu-io.entity.target,type=#cu:not_damageable] add cu-internal.entity.target.filter.not_damageable.1
tag @e[tag=cu-io.entity.target,nbt={Invulnerable:1b}] add cu-internal.entity.target.filter.not_damageable.1
execute store result score entity.target.filter.not_damageable.Result cu-io run tag @e[tag=!cu-internal.entity.target.filter.not_damageable.1] remove cu-io.entity.target
tag @e remove cu-internal.entity.target.filter.not_damageable.1
