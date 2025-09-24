scoreboard players set #1 temp 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{forward:true}}}} run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run scoreboard players add @s cu.player.timer.input_forward 1
execute if score #1 temp matches 0 run scoreboard players reset @s cu.player.timer.input_forward

scoreboard players set #1 temp 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{backward:true}}}} run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run scoreboard players add @s cu.player.timer.input_backward 1
execute if score #1 temp matches 0 run scoreboard players reset @s cu.player.timer.input_backward

scoreboard players set #1 temp 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{left:true}}}} run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run scoreboard players add @s cu.player.timer.input_left 1
execute if score #1 temp matches 0 run scoreboard players reset @s cu.player.timer.input_left

scoreboard players set #1 temp 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{right:true}}}} run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run scoreboard players add @s cu.player.timer.input_right 1
execute if score #1 temp matches 0 run scoreboard players reset @s cu.player.timer.input_right

scoreboard players set #1 temp 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{jump:true}}}} run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run scoreboard players add @s cu.player.timer.input_jump 1
execute if score #1 temp matches 0 run scoreboard players reset @s cu.player.timer.input_jump

scoreboard players set #1 temp 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sneak:true}}}} run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run scoreboard players add @s cu.player.timer.input_sneak 1
execute if score #1 temp matches 0 run scoreboard players reset @s cu.player.timer.input_sneak

scoreboard players set #1 temp 0
execute if predicate {condition:"entity_properties",entity:"this",predicate:{type_specific:{type:"minecraft:player",input:{sprint:true}}}} run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run scoreboard players add @s cu.player.timer.input_sprint 1
execute if score #1 temp matches 0 run scoreboard players reset @s cu.player.timer.input_sprint

execute unless score @s cu-internal.player.trigger.leave_game matches -2147483648..2147483647 run function cu:player/trigger/first_time_join_game
execute if score @s cu-internal.player.trigger.leave_game matches 1.. run function cu:player/trigger/join_game
