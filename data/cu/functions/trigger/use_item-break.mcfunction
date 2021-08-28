scoreboard players remove @s useItemTimer 1

tag @s[scores={useItemTimer=0}] remove cu.useItemTimer

execute if entity @s[scores={useItemTimer=0}] run function #minecraft:use_item-break

tag @s[scores={useItemTimer=0}] remove cu.usingItemContinuously
