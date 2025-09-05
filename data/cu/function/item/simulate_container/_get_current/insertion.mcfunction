data modify storage cu:item simulate_container._current set from storage cu:item simulate_container._insert[0].content
data remove storage cu:item simulate_container._insert[0]

function cu:item/simulate_container/_reset_insert_status
