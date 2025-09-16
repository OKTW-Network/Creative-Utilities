scoreboard players set #data.digit.power.FUNCTION_STAGE cu-io 0
scoreboard players reset #data.digit.power.Result cu-io
execute if score #data.digit.power.Input.base cu-io matches 0 if score #data.digit.power.Input.exponent cu-io matches ..0 run return run function cu:data/digit/power/_return_fail
execute unless score #data.digit.power.Input.base cu-io matches -2147483648..2147483647 run return run function cu:data/digit/power/_return_fail
execute unless score #data.digit.power.Input.exponent cu-io matches -2147483648..2147483647 run return run function cu:data/digit/power/_return_fail
scoreboard players set #1 temp 0
scoreboard players operation #data.digit.power.Option.result_precision cu-io > #1 temp
scoreboard players set #1 temp 9
scoreboard players operation #data.digit.power.Option.result_precision cu-io < #1 temp

scoreboard players set #data.digit.power.FUNCTION_STAGE cu-io 1
execute if score #data.digit.power.Input.base cu-io matches 0 run scoreboard players set #data.digit.power.Result cu-io 0
execute if score #data.digit.power.Input.exponent cu-io matches 0 run scoreboard players set #data.digit.power.Result cu-io 1
execute if score #data.digit.power.Input.exponent cu-io matches 1 run scoreboard players operation #data.digit.power.Result cu-io = #data.digit.power.Input.base cu-io
execute if score #data.digit.power.Result cu-io matches -2147483648..2147483647 run return run function cu:data/digit/power/_return_result

scoreboard players set #data.digit.power.FUNCTION_STAGE cu-io 2
execute store result score #data.digit.power.recur_countdown cu-internal run scoreboard players operation #data.digit.power.Result cu-io = #data.digit.power.Input.base cu-io
scoreboard players set #1 temp -1
execute if score #data.digit.power.recur_countdown cu-internal matches ..-1 run scoreboard players operation #data.digit.power.recur_countdown cu-internal *= #1 temp
scoreboard players remove #data.digit.power.recur_countdown cu-internal 1
execute if score #data.digit.power.recur_countdown cu-internal matches 1.. run function cu:data/digit/power/_func/power
execute if score #data.digit.power.Input.exponent cu-io matches ..-1 run function cu:data/digit/power/_func/process_negative_exponent

scoreboard players set #data.digit.power.FUNCTION_STAGE cu-io -1
return run function cu:data/digit/power/_return_result
