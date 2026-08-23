data modify storage cu:internal data.digit.average.quotient_list set value []
scoreboard players set #data.digit.average.compensation cu-internal 0
function cu:data/digit/average/_func/average/method_1/recur_divide/main
data modify storage cu:io data.digit.addition.Input set from storage cu:internal data.digit.average.quotient_list
function cu:data/digit/addition/main
scoreboard players operation #data.digit.average.Result cu-io = #data.digit.addition.Result cu-io
scoreboard players operation #data.digit.average.Result cu-io += #data.digit.average.compensation cu-internal
