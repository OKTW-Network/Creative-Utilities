data merge entity @s {custom_particle:{type:"minecraft:block",block_state:{Name:"minecraft:air"}},Radius:0.0f,WaitTime:0,Duration:0}
data modify entity @s Owner set from storage cu:io entity.target.select.uuid_list.Input[0]
execute on origin store result score #1 temp run tag @s add cu-io.entity.target
scoreboard players operation #entity.target.select.uuid_list.Result cu-io += #1 temp
kill @s
