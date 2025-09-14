scoreboard players operation #value.digit.power.Result cu-io *= #value.digit.power.Input.base cu-io
scoreboard players remove #value.digit.power.recur_countdown cu-internal 1
execute if score #value.digit.power.recur_countdown cu-internal matches 1.. run function cu:value/digit/power/_func/power
