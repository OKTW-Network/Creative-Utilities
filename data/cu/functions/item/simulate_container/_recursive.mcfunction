execute if score #item.simulate_container._insertShift cu matches 1.. run scoreboard players remove #item.simulate_container._insertShift cu 1
function cu:item/simulate_container/_get_current/main
execute if data storage cu:item simulate_container._current{operation:"set"} run function cu:item/simulate_container/_operation/set
execute if data storage cu:item simulate_container._current{operation:"append"} run function cu:item/simulate_container/_operation/append
execute if data storage cu:item simulate_container._current{operation:"prepend"} run function cu:item/simulate_container/_operation/prepend
execute if data storage cu:item simulate_container._current{operation:"fill"} run function cu:item/simulate_container/_operation/fill
execute if data storage cu:item simulate_container._current{operation:"set_slot_dummy"} run function cu:item/simulate_container/_operation/set_slot_dummy
execute if data storage cu:item simulate_container._current{operation:"append_slot_dummy"} run function cu:item/simulate_container/_operation/append_slot_dummy
execute if data storage cu:item simulate_container._current{operation:"prepend_slot_dummy"} run function cu:item/simulate_container/_operation/prepend_slot_dummy
execute if data storage cu:item simulate_container._current{operation:"fill_dummy"} run function cu:item/simulate_container/_operation/fill_dummy
execute if data storage cu:item simulate_container._current{operation:"template"} run function cu:item/simulate_container/_operation/template
execute if data storage cu:item simulate_container._current{operation:"invert_template"} run function cu:item/simulate_container/_operation/invert_template
execute if data storage cu:item simulate_container._current{operation:"remove_slot"} run function cu:item/simulate_container/_operation/remove_slot
execute if data storage cu:item simulate_container._current{operation:"result"} run function cu:item/simulate_container/_operation/result
execute if data storage cu:item simulate_container._current{operation:"result_slot"} run function cu:item/simulate_container/_operation/result_slot
execute if data storage cu:item simulate_container._current{operation:"transform"} unless data storage cu:item simulate_container._current.value{operation:"transform"} run function cu:item/simulate_container/_operation/transform
data remove storage cu:item simulate_container.input[0]
scoreboard players set #item.simulate_container._keepRecursive cu 0
execute if data storage cu:item simulate_container.input[0] run scoreboard players set #item.simulate_container._keepRecursive cu 1
execute if score #item.simulate_container._insertShift cu matches 1 run scoreboard players set #item.simulate_container._keepRecursive cu 1
execute if score #item.simulate_container._keepRecursive cu matches 0 unless data storage cu:item simulate_container._current{operation:"result"} unless data storage cu:item simulate_container._current{operation:"result_slot"} run function cu:item/simulate_container/_operation/result
execute if score #item.simulate_container._keepRecursive cu matches 1 run function cu:item/simulate_container/_recursive
