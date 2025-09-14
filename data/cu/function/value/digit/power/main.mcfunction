scoreboard players set #value.digit.power.FUNCTION_STAGE cu-io 0
scoreboard players reset #value.digit.power.Result cu-io
execute if score #value.digit.power.Input.base cu-io matches 0 if score #value.digit.power.Input.exponent cu-io matches ..0 run return run function cu:value/digit/power/_return_fail
execute unless score #value.digit.power.Input.base cu-io matches -2147483648..2147483647 run return run function cu:value/digit/power/_return_fail
execute unless score #value.digit.power.Input.exponent cu-io matches -2147483648..2147483647 run return run function cu:value/digit/power/_return_fail
scoreboard players set #1 temp 0
scoreboard players operation #value.digit.power.Option.result_precision cu-io > #1 temp
scoreboard players set #1 temp 9
scoreboard players operation #value.digit.power.Option.result_precision cu-io < #1 temp

scoreboard players set #value.digit.power.FUNCTION_STAGE cu-io 1
execute if score #value.digit.power.Input.base cu-io matches 0 run scoreboard players set #value.digit.power.Result cu-io 0
execute if score #value.digit.power.Input.exponent cu-io matches 0 run scoreboard players set #value.digit.power.Result cu-io 1
execute if score #value.digit.power.Input.exponent cu-io matches 1 run scoreboard players operation #value.digit.power.Result cu-io = #value.digit.power.Input.base cu-io
execute if score #value.digit.power.Result cu-io matches -2147483648..2147483647 run return run function cu:value/digit/power/_return_result

scoreboard players set #value.digit.power.FUNCTION_STAGE cu-io 2
execute store result score #value.digit.power.recur_countdown cu-internal run scoreboard players operation #value.digit.power.Result cu-io = #value.digit.power.Input.base cu-io
scoreboard players set #1 temp -1
execute if score #value.digit.power.recur_countdown cu-internal matches ..-1 run scoreboard players operation #value.digit.power.recur_countdown cu-internal *= #1 temp
scoreboard players remove #value.digit.power.recur_countdown cu-internal 1
execute if score #value.digit.power.recur_countdown cu-internal matches 1.. run function cu:value/digit/power/_func/power
execute if score #value.digit.power.Input.exponent cu-io matches ..-1 run function cu:value/digit/power/_func/process_negative_exponent

scoreboard players set #value.digit.power.FUNCTION_STAGE cu-io -1
return run function cu:value/digit/power/_return_result
