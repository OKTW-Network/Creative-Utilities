data modify storage cu:io data.digit.addition.Input set from storage cu:io data.digit.average.Input
function cu:data/digit/addition/main
scoreboard players operation #data.digit.average.Result cu-io = #data.digit.addition.Result cu-io
scoreboard players operation #data.digit.average.Result cu-io /= #data.digit.average.count cu-internal
