execute if score #data.digit.power.Option.result_precision cu-io matches 0 run scoreboard players set #1 temp 1
execute if score #data.digit.power.Option.result_precision cu-io matches 1 run scoreboard players set #1 temp 10
execute if score #data.digit.power.Option.result_precision cu-io matches 2 run scoreboard players set #1 temp 100
execute if score #data.digit.power.Option.result_precision cu-io matches 3 run scoreboard players set #1 temp 1000
execute if score #data.digit.power.Option.result_precision cu-io matches 4 run scoreboard players set #1 temp 10000
execute if score #data.digit.power.Option.result_precision cu-io matches 5 run scoreboard players set #1 temp 100000
execute if score #data.digit.power.Option.result_precision cu-io matches 6 run scoreboard players set #1 temp 1000000
execute if score #data.digit.power.Option.result_precision cu-io matches 7 run scoreboard players set #1 temp 10000000
execute if score #data.digit.power.Option.result_precision cu-io matches 8 run scoreboard players set #1 temp 100000000
execute if score #data.digit.power.Option.result_precision cu-io matches 9 run scoreboard players set #1 temp 1000000000
execute store result score #data.digit.power.Result cu-io run scoreboard players operation #1 temp /= #data.digit.power.Result cu-io
