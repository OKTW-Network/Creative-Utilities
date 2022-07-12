scoreboard players remove @s cu.trigger.useItemTimer 1

tag @s[scores={cu.trigger.useItemTimer=0}] remove cu.cu.trigger.useItemTimer

execute if entity @s[scores={cu.trigger.useItemTimer=0}] run function #minecraft:use_item-break

tag @s[scores={cu.trigger.useItemTimer=0}] remove cu.usingItemContinuously
