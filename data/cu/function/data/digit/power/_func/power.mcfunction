scoreboard players operation #data.digit.power.Result cu-io *= #data.digit.power.Input.base cu-io
scoreboard players remove #data.digit.power.recur_countdown cu-internal 1
execute if score #data.digit.power.recur_countdown cu-internal matches 1.. run function cu:data/digit/power/_func/power
