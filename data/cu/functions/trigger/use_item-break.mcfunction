tag @s[tag=cu.useItemContinuous,scores={useItemTimer=0}] remove cu.useItemContinuous

execute if entity @s[scores={useItemTimer=0}] run function #minecraft:use_item-break

tag @s remove cu.useItemBreak
