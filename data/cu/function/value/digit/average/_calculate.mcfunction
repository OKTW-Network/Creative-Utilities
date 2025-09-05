data modify storage cu:value digit.addition.input set from storage cu:value digit.average.input
function cu:value/digit/addition/main
scoreboard players operation #value.digit.average.result cu = #value.digit.addition.result cu
scoreboard players operation #value.digit.average.result cu /= #value.digit.average._count cu
