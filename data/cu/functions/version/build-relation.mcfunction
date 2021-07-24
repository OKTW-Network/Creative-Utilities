execute if score #higher Version matches 1 run data modify storage cu:resources version.relation set value '{"text":" -> ","color":"green"}'
execute if score #lower Version matches 1 run data modify storage cu:resources version.relation set value '{"text":" -> ","color":"red"}'
