scoreboard players operation @s useItemTimer = #cu$use_item_click_timeout Config
scoreboard players add @s useItemTimer 1

tag @s[tag=cu.useItemTimer,tag=!cu.usingItemContinuously] add cu.usingItemContinuously
tag @s[tag=!cu.useItemTimer] add cu.useItemTimer

function #minecraft:use_item

scoreboard players set @s useItemCount 0
