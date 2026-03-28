scoreboard players reset #data.digit.invert_boolean.Result cu-io
execute if score #data.digit.invert_boolean.Input cu-io matches ..0 run scoreboard players set #data.digit.invert_boolean.Input cu-io 0
execute if score #data.digit.invert_boolean.Input cu-io matches 1.. run scoreboard players set #data.digit.invert_boolean.Input cu-io 1
execute unless score #data.digit.invert_boolean.Input cu-io matches 0..1 run scoreboard players set #data.digit.invert_boolean.Input cu-io 0

scoreboard players set #1 temp -1
scoreboard players operation #data.digit.invert_boolean.Input cu-io *= #1 temp
execute store result score #data.digit.invert_boolean.Result cu-io run scoreboard players add #data.digit.invert_boolean.Input cu-io 1

scoreboard players reset #data.digit.invert_boolean.Input cu-io

return run execute unless score #data.digit.invert_boolean.Result cu-io matches 0 run scoreboard players get #data.digit.invert_boolean.Result cu-io
