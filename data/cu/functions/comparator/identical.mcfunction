function cu:comparator/different
scoreboard players set #1 calcu_temp 0
execute store success score #1 calcu_temp if data storage cu:result {comparator:0} run data modify storage cu:result comparator set value 1
execute if score #1 calcu_temp matches 0 if data storage cu:result {comparator:1} run data modify storage cu:result comparator set value 0
