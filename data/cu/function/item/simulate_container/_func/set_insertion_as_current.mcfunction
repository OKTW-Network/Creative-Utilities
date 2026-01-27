data modify storage cu:internal item.simulate_container.current set from storage cu:internal item.simulate_container.insertion_queue[0].content
data remove storage cu:internal item.simulate_container.insertion_queue[0]
function cu:item/simulate_container/_func/reset_insert_status