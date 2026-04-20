function cu:data/digit/power/_reset_function
return run execute if score #data.digit.power.Result cu-io matches -2147483648..2147483647 run scoreboard players get #data.digit.power.Result cu-io
