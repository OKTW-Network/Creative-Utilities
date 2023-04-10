execute if data storage cu:block drop_item.input[0] run function cu:block/drop_item/_set_input
execute if data storage cu:block drop_item.input[0] positioned ^ ^ ^1 run function cu:item/summon/main
execute if data storage cu:block drop_item.input[0] run function cu:block/drop_item/_playsound

data remove storage cu:block drop_item.input
