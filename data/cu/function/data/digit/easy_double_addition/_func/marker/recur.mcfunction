data modify storage cu:internal dummy set value {x:0,y:0,z:0}
data modify storage cu:internal dummy.y set from storage cu:io data.digit.easy_double_addition.Input[0]
data remove storage cu:io data.digit.easy_double_addition.Input[0]
execute at @s store success score #data.digit.easy_double_addition.successful cu-internal run function cu:entity/lazy_teleport_relative_coordinates with storage cu:internal dummy
execute unless score #data.digit.easy_double_addition.successful cu-internal matches 1 run return fail
execute if data storage cu:io data.digit.easy_double_addition.Input[0] run return run function cu:data/digit/easy_double_addition/_func/marker/recur
return 1
