#Abandoned, replaced with `invert_boolean`.
scoreboard players reset #data.digit.boolean_reverse.Result cu-io
scoreboard players operation #data.digit.invert_boolean.Input cu-io = #data.digit.boolean_reverse.Input cu-io
scoreboard players reset #data.digit.boolean_reverse.Input cu-io
execute store result score #data.digit.boolean_reverse.Result cu-io run return run function cu:data/digit/invert_boolean