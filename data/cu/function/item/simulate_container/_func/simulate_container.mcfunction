scoreboard players set #1 temp 0
execute if data storage cu:internal item.simulate_container.insertion_queue[0] if score #item.simulate_container.insertion_countdown cu-internal matches 0 run scoreboard players set #1 temp 1
execute if score #1 temp matches 0 run data modify storage cu:internal item.simulate_container.current set from storage cu:io item.simulate_container.Input[0]
execute if score #1 temp matches 1 run function cu:item/simulate_container/_func/set_insertion_as_current
execute if score #item.simulate_container.insertion_countdown cu-internal matches 1.. run scoreboard players remove #item.simulate_container.insertion_countdown cu-internal 1

execute if data storage cu:internal item.simulate_container.current{operation:"set"} run function cu:item/simulate_container/_func/operation/set
execute if data storage cu:internal item.simulate_container.current{operation:"append"} run function cu:item/simulate_container/_func/operation/append
execute if data storage cu:internal item.simulate_container.current{operation:"prepend"} run function cu:item/simulate_container/_func/operation/prepend
execute if data storage cu:internal item.simulate_container.current{operation:"fill"} run function cu:item/simulate_container/_func/operation/fill
execute if data storage cu:internal item.simulate_container.current{operation:"set_slot_dummy"} run function cu:item/simulate_container/_func/operation/set_slot_dummy
execute if data storage cu:internal item.simulate_container.current{operation:"append_slot_dummy"} run function cu:item/simulate_container/_func/operation/append_slot_dummy
execute if data storage cu:internal item.simulate_container.current{operation:"prepend_slot_dummy"} run function cu:item/simulate_container/_func/operation/prepend_slot_dummy
execute if data storage cu:internal item.simulate_container.current{operation:"fill_dummy"} run function cu:item/simulate_container/_func/operation/fill_dummy
execute if data storage cu:internal item.simulate_container.current{operation:"template"} run function cu:item/simulate_container/_func/operation/template
execute if data storage cu:internal item.simulate_container.current{operation:"invert_template"} run function cu:item/simulate_container/_func/operation/invert_template
execute if data storage cu:internal item.simulate_container.current{operation:"remove_slot"} run function cu:item/simulate_container/_func/operation/remove_slot
execute if data storage cu:internal item.simulate_container.current{operation:"result"} run function cu:item/simulate_container/_func/operation/result
execute if data storage cu:internal item.simulate_container.current{operation:"result_slot"} run function cu:item/simulate_container/_func/operation/result_slot
execute if data storage cu:internal item.simulate_container.current{operation:"transform"} unless data storage cu:internal item.simulate_container.current.value{operation:"transform"} run function cu:item/simulate_container/_func/operation/transform

data remove storage cu:io item.simulate_container.Input[0]
scoreboard players set #item.simulate_container.stop_recur cu-internal 1
execute if data storage cu:io item.simulate_container.Input[0] run scoreboard players set #item.simulate_container.stop_recur cu-internal 0
execute if score #item.simulate_container.insertion_countdown cu-internal matches 0 run scoreboard players set #item.simulate_container.stop_recur cu-internal 0
execute if score #item.simulate_container.stop_recur cu-internal matches 1 unless data storage cu:internal item.simulate_container.current{operation:"result"} unless data storage cu:internal item.simulate_container.current{operation:"result_slot"} run function cu:item/simulate_container/_func/operation/result
execute if score #item.simulate_container.stop_recur cu-internal matches 0 run function cu:item/simulate_container/_func/simulate_container
