scoreboard players operation @s cu.trigger.useItemTimer = #cu$use_item_click_timeout Config
scoreboard players add @s cu.trigger.useItemTimer 1

tag @s[tag=cu.cu.trigger.useItemTimer,tag=!cu.usingItemContinuously] add cu.usingItemContinuously
tag @s[tag=!cu.cu.trigger.useItemTimer] add cu.cu.trigger.useItemTimer

function #minecraft:use_item

scoreboard players set @s cu.trigger.useItemCounter 0
