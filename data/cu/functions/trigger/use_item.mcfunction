scoreboard players set @s useItemTimer 4

function #minecraft:use_item

tag @s[tag=!cu.usedItem] add cu.usedItem

scoreboard players set @s useItemCount 0
