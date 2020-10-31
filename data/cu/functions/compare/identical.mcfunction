function cu:compare/different
scoreboard players set #1 calcu_temp 0
execute store success score #1 calcu_temp if data storage cu:compare {result:0b} run data modify storage cu:compare result set value 1b
execute if score #1 calcu_temp matches 0 if data storage cu:compare {result:1b} run data modify storage cu:compare result set value 0b
