scoreboard players reset #value.digit.boolean_reverse.Result cu-io
execute unless score #value.digit.boolean_reverse.Input cu-io matches 0..1 run scoreboard players set #value.digit.boolean_reverse.Input cu-io 0

scoreboard players operation #value.digit.boolean_reverse.Result cu-io = #value.digit.boolean_reverse.Input cu-io
scoreboard players set #1 temp -1
scoreboard players operation #value.digit.boolean_reverse.Result cu-io *= #1 temp
scoreboard players add #value.digit.boolean_reverse.Result cu-io 1

scoreboard players reset #value.digit.boolean_reverse.Input cu-io

return run execute unless score #value.digit.boolean_reverse.Result cu-io matches 0 run scoreboard players get #value.digit.boolean_reverse.Result cu-io
