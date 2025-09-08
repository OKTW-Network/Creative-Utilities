execute in cu:simulation positioned 0 9 0 run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:structure_void",count:1},Invulnerable:1b,Tags:["cu.item.give"]}
data modify entity @e[tag=cu.item.give,limit=1] Item set from storage cu:item give.input[0]
data modify entity @e[tag=cu.item.give,limit=1] Owner set from storage cu:item give.owner
tp @e[tag=cu.item.give] @s
tag @e[tag=cu.item.give] remove cu.item.give

data remove storage cu:item give.input[0]
execute if data storage cu:item give.input[0] run function cu:item/give/_recursive
