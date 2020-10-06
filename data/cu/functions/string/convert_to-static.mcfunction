execute in cu:data_temp run data modify block 0 1 1 Text1 set value ''
execute in cu:data_temp run data modify block 0 1 1 Text1 set from storage cu:string toStatic.input
execute in cu:data_temp run data modify storage cu:string toStatic.result set from block 0 1 1 Text1
