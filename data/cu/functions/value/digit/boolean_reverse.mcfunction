scoreboard players operation #value.digit.boolean_reverse.result cu = #value.digit.boolean_reverse.input cu
scoreboard players operation #value.digit.boolean_reverse.result cu *= #-1 num
scoreboard players add #value.digit.boolean_reverse.result cu 1
execute unless score #value.digit.boolean_reverse.input cu matches 0..1 run scoreboard players set #value.digit.boolean_reverse.result cu 0

scoreboard players reset #value.digit.boolean_reverse.input cu
