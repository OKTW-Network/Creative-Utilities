execute if data storage cu:item simulate_container._current.value{method:"prepend"} run data modify storage cu:item simulate_container._insert prepend value {_this:1b}
execute if data storage cu:item simulate_container._current.value{method:"append"} run data modify storage cu:item simulate_container._insert append value {_this:1b}
execute store result score #1 temp run data get storage cu:item simulate_container._current.value.shift
execute if score #1 temp matches ..-1 run scoreboard players operation #1 temp *= #-1 num
execute store result storage cu:item simulate_container._insert[{_this:1b}].shift int 1.0 run scoreboard players get #1 temp
data modify storage cu:item simulate_container._insert[{_this:1b}].content.operation set from storage cu:item simulate_container._current.value.operation
execute in cu:data_temp run data modify storage cu:item simulate_container._insert[{_this:1b}].content.value set from block 0 1 0 Items
data remove storage cu:item simulate_container._insert[{_this:1b}]._this

scoreboard players set #1 temp 0
execute if data storage cu:item simulate_container._current.value{method:"prepend"} run scoreboard players set #1 temp 1
execute unless data storage cu:item simulate_container._insert[1] run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run function cu:item/simulate_container/_reset_insert_status
