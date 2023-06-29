# can't find entities across dimensions MC-260591
# execute in cu:data_temp positioned 0 9 0 run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cu.dummy.entity.find_player"],Particle:"block minecraft:air",Radius:0.0f,WaitTime:2147483647}
summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["cu.dummy.entity.find_player"],Particle:"block minecraft:air",Radius:0.0f,WaitTime:2147483647}
data modify entity @e[tag=cu.dummy.entity.find_player,limit=1] Owner set from storage cu:entity find_player.input[0]
execute as @e[tag=cu.dummy.entity.find_player] on origin run tag @s add cu._tag.entity.find_player.elect
kill @e[tag=cu.dummy.entity.find_player]
data remove storage cu:entity find_player.input[0]

execute if data storage cu:entity find_player.input[0] run function cu:entity/find_player/_recursive
