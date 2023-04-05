# execute in cu:data_temp positioned 0 9 0 run summon minecraft:item ~ ~ ~ {Tags:["cu.dummy.entity.find_uuid"],Invulnerable:1b,Age:-32768s,PickupDelay:32767,Item:{id:"minecraft:structure_void",Count:1b}}
summon minecraft:item ~ ~ ~ {Tags:["cu.dummy.entity.find_uuid"],Invulnerable:1b,Age:-32768s,PickupDelay:32767,Item:{id:"minecraft:structure_void",Count:1b}}
data modify entity @e[tag=cu.dummy.entity.find_uuid,limit=1] Thrower set from storage cu:entity find_uuid.input[0]
execute as @e[tag=cu.dummy.entity.find_uuid] on origin run tag @s add cu._tag.entity.find_uuid.elect
kill @e[tag=cu.dummy.entity.find_uuid]
data remove storage cu:entity find_uuid.input[0]

execute if data storage cu:entity find_uuid.input[0] run function cu:entity/find_uuid/_recursive
