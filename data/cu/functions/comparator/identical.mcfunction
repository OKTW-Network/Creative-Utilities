function cu:comparator/different
scoreboard players set #calculation_temp1 numeric 0
execute store success score #calculation_temp1 numeric if data storage cu:result {comparator:0} run data modify storage cu:result comparator set value 1
execute if score #calculation_temp1 numeric matches 0 if data storage cu:result {comparator:1} run data modify storage cu:result comparator set value 0
