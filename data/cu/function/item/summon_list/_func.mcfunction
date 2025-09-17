data modify storage cu:io item.summon.Input set from storage cu:io item.summon_list.Input[0]
scoreboard players operation #item.summon.Option.pickup_delay cu-io = #item.summon_list.Option.pickup_delay cu-io
scoreboard players operation #item.summon.Option.prevent_pickup cu-io = #item.summon_list.Option.prevent_pickup cu-io
scoreboard players operation #item.summon.Option.prevent_despawn cu-io = #item.summon_list.Option.prevent_despawn cu-io
scoreboard players operation #item.summon.Option.invulnerable cu-io = #item.summon_list.Option.invulnerable cu-io
execute store success score #1 temp run function cu:item/summon/main
scoreboard players operation #item.summon_list.Result cu-io += #1 temp
data remove storage cu:io item.summon_list.Input[0]
execute if data storage cu:io item.summon_list.Input[0] run function cu:item/summon_list/_func
