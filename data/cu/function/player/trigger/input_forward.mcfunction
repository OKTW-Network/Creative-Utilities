execute unless score @s cu-io.player.trigger.input_forward_record matches 0.. run scoreboard players set @s cu-io.player.trigger.input_forward_record 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:true}}}} run return run scoreboard players add @s cu-io.player.trigger.input_forward_record 1
scoreboard players set #1 temp -1
scoreboard players operation @s cu-io.player.trigger.input_forward_record *= #1 temp
return 2