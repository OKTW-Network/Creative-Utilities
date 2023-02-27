scoreboard players set #item.simulate_container._get_current cu 0
execute if score #item.simulate_container._insertionCount cu matches 1.. if score #item.simulate_container._insertShift cu matches 0 run scoreboard players set #item.simulate_container._get_current cu 1
execute if score #item.simulate_container._get_current cu matches 0 run data modify storage cu:item simulate_container._current set from storage cu:item simulate_container.input[0]
execute if score #item.simulate_container._get_current cu matches 1 run function cu:item/simulate_container/_get_current/insertion
