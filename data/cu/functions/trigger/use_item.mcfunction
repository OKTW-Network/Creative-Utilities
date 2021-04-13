scoreboard players set @s useItemTimer 4

tag @s[tag=!cu.usedItem] add cu.usedItem

function #minecraft:use_item

tag @s[tag=!cu.useItemContinuous] add cu.useItemContinuous

scoreboard players set @s useItemCount 0
