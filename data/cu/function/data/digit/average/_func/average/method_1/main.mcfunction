data modify storage cu:internal data.digit.average.pre_processed set value []
function cu:data/digit/average/_func/average/method_1/recur
data modify storage cu:io data.digit.addition.Input set from storage cu:internal data.digit.average.pre_processed
function cu:data/digit/addition/main
scoreboard players operation #data.digit.average.Result cu-io = #data.digit.addition.Result cu-io
