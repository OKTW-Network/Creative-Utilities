data modify storage cu:io value.digit.addition.Input set from storage cu:io value.digit.average.Input
function cu:value/digit/addition/main
scoreboard players operation #value.digit.average.Result cu-io = #value.digit.addition.Result cu-io
scoreboard players operation #value.digit.average.Result cu-io /= #value.digit.average.count cu-internal
