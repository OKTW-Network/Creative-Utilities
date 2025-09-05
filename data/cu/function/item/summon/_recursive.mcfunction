execute in cu:data_temp positioned 0 9 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",Count:1b},Health:5s,Tags:["cu.item.summon"]}
data modify entity @e[tag=cu.item.summon,limit=1] Item set from storage cu:item summon.input[0]
execute if score #item.summon.pickupDelay cu matches -32768..32767 store result entity @e[tag=cu.item.summon,limit=1] PickupDelay short 1 run scoreboard players get #item.summon.pickupDelay cu
execute if score #item.summon.invulnerable cu matches 1 run data modify entity @e[tag=cu.item.summon,limit=1] Invulnerable set value 1b
execute if score #item.summon.preventDespawn cu matches 1 run data modify entity @e[tag=cu.item.summon,limit=1] Age set value -32768s
tp @e[tag=cu.item.summon] ~ ~ ~
tag @e[tag=cu.item.summon] remove cu.item.summon

data remove storage cu:item summon.input[0]
execute if data storage cu:item summon.input[0] run function cu:item/summon/_recursive
