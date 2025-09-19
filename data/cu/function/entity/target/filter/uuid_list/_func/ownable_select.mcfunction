data merge entity @s {custom_particle:{type:"minecraft:block",block_state:{Name:"minecraft:air"}},Radius:0.0f,WaitTime:0,Duration:0}
data modify entity @s Owner set from storage cu:io entity.target.filter.uuid_list.Input[0]
execute on origin run tag @s add cu-internal.entity.target.filter.uuid_list.1
kill @s
