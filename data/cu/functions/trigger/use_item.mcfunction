scoreboard players operation @s cu.trigger.useItemTimer = #cu$use_item_click_timeout Config
scoreboard players add @s cu.trigger.useItemTimer 1

tag @s[tag=cu._tag.trigger.useItemTimer,tag=!cu._status.usingItemContinuously] add cu._status.usingItemContinuously
tag @s[tag=!cu._tag.trigger.useItemTimer] add cu._tag.trigger.useItemTimer

function #minecraft:use_item

scoreboard players set @s cu.trigger.useItemCounter 0
