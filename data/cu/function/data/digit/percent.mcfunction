scoreboard players reset #data.digit.percent.Result cu-io
execute unless score #data.digit.percent.Input.base cu-io matches -2147483648..2147483647 run scoreboard players set #data.digit.percent.Input.base cu-io 0
execute unless score #data.digit.percent.Input.percentage cu-io matches -2147483648..2147483647 run scoreboard players set #data.digit.percent.Input.percentage cu-io 100
execute unless score #data.digit.percent.Option.round cu-io matches 0..1 run scoreboard players set #data.digit.percent.Option.round cu-io 0

execute store result score #data.digit.percent.round_check cu-internal run scoreboard players operation #data.digit.percent.Input.base cu-io *= #data.digit.percent.Input.percentage cu-io
scoreboard players set #1 temp 100
execute store result score #data.digit.percent.Result cu-io run scoreboard players operation #data.digit.percent.Input.base cu-io /= #1 temp
execute if score #data.digit.percent.Option.round cu-io matches 1 run scoreboard players operation #data.digit.percent.round_check cu-internal %= #1 temp
execute if score #data.digit.percent.Option.round cu-io matches 1 if score #data.digit.percent.round_check cu-internal matches 50.. store result score #data.digit.percent.Result cu-io run scoreboard players add #data.digit.percent.Input.base cu-io 1

scoreboard players reset #data.digit.percent.Input.base cu-io
scoreboard players reset #data.digit.percent.Input.percentage cu-io
scoreboard players reset #data.digit.percent.Option.round cu-io
scoreboard players reset #data.digit.percent.round_check cu-internal

return run scoreboard players reset #data.digit.percent.Result cu-io
