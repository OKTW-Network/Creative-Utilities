scoreboard players set #cu_dependency_missing Meta 0

execute store success score #cu_dependency-math Meta run function math:version

execute if score #cu_dependency-math Meta matches 0 run scoreboard players set #cu_dependency_missing Meta 1
execute if score #cu_dependency_missing Meta matches 1 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Missing dependency: ","color":"red"}]
execute if score #cu_dependency-math Meta matches 0 run tellraw @a ["",{"text":" - "},{"text":"Math Integraion","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":"Click here for the Github page"},"clickEvent":{"action":"open_url","value":"https://github.com/OKTW-Network/Math-integration"}}]
