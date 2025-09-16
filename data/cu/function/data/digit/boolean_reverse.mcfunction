scoreboard players reset #data.digit.boolean_reverse.Result cu-io
execute unless score #data.digit.boolean_reverse.Input cu-io matches 0..1 run scoreboard players set #data.digit.boolean_reverse.Input cu-io 0

scoreboard players operation #data.digit.boolean_reverse.Result cu-io = #data.digit.boolean_reverse.Input cu-io
scoreboard players set #1 temp -1
scoreboard players operation #data.digit.boolean_reverse.Result cu-io *= #1 temp
scoreboard players add #data.digit.boolean_reverse.Result cu-io 1

scoreboard players reset #data.digit.boolean_reverse.Input cu-io

return run execute unless score #data.digit.boolean_reverse.Result cu-io matches 0 run scoreboard players get #data.digit.boolean_reverse.Result cu-io
