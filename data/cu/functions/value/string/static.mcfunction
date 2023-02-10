execute in cu:data_temp run data modify block 0 1 1 Text1 set value ''
execute in cu:data_temp run data modify block 0 1 1 Text1 set from storage cu:value string.static.input
execute in cu:data_temp run data modify storage cu:value string.static.result set from block 0 1 1 Text1

data remove storage cu:value string.static.input
execute in cu:data_temp run data remove block 0 1 1 Text1
