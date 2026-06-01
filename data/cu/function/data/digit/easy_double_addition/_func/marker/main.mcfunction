scoreboard players set #data.digit.easy_double_addition.successful cu-internal 0
execute if function cu:data/digit/easy_double_addition/_func/marker/recur run data modify storage cu:io data.digit.easy_double_addition.Result set from entity @s Pos[1]
kill @s
execute unless score #data.digit.easy_double_addition.successful cu-internal matches 1 run return fail
return 1
