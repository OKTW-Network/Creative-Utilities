data modify storage cu:internal dummy set value {shift:0,content:{operation:'INVALID',value:'INVALID'}}
execute store result score #1 temp run data get storage cu:internal item.simulate_container.current.value.shift
scoreboard players set #2 temp -1
execute if score #1 temp matches ..-1 run scoreboard players operation #1 temp *= #2 temp
execute store result storage cu:internal dummy.shift int 1.0 run scoreboard players get #1 temp
data modify storage cu:internal dummy.content.operation set from storage cu:internal item.simulate_container.current.value.operation
data modify storage cu:internal dummy.content.value set from block ~ ~ ~ Items
execute if data storage cu:internal item.simulate_container.current.value{method:"prepend"} run data modify storage cu:internal item.simulate_container.insertion_queue prepend from storage cu:internal dummy
execute if data storage cu:internal item.simulate_container.current.value{method:"append"} run data modify storage cu:internal item.simulate_container.insertion_queue append from storage cu:internal dummy

scoreboard players set #1 temp 0
execute if data storage cu:internal item.simulate_container.current.value{method:"prepend"} run scoreboard players set #1 temp 1
execute unless data storage cu:internal item.simulate_container.insertion_queue[1] run scoreboard players set #1 temp 1
execute if score #1 temp matches 1 run function cu:item/simulate_container/_func/reset_insert_status
