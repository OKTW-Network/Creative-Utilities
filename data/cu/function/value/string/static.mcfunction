execute in cu:simulation run data modify block 0 1 1 front_text.messages[0] set from storage cu:value string.static.input
execute in cu:simulation run data modify storage cu:value string.static.result set from block 0 1 1 front_text.messages[0]

data remove storage cu:value string.static.input
