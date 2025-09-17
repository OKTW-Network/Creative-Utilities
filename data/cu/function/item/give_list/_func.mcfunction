data modify storage cu:io item.give.Input set from storage cu:io item.give_list.Input[0]
scoreboard players operation #item.give.Option.omit_owner cu-io = #item.give_list.Option.omit_owner cu-io
execute store success score #1 temp run function cu:item/give/main
scoreboard players operation #item.give_list.Result cu-io += #1 temp
data remove storage cu:io item.give_list.Input[0]
execute if data storage cu:io item.give_list.Input[0] run function cu:item/give_list/_func
