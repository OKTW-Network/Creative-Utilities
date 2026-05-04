scoreboard players reset #data.digit.is_odd.Result cu-io

execute unless score #data.digit.is_odd.Input cu-io matches -2147483648..2147483647 run return run function cu:data/digit/is_odd/_func/return_false
execute if score #data.digit.is_odd.Input cu-io matches 0 run return run function cu:data/digit/is_odd/_func/return_false

scoreboard players set #1 temp 2
execute store result score #data.digit.is_odd.Result cu-io run scoreboard players operation #data.digit.is_odd.Input cu-io %= #1 temp

return run function cu:data/digit/is_odd/_return_result
