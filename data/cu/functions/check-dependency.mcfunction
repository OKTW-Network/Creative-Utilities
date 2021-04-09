scoreboard objectives add Meta dummy

scoreboard players set #cu$dependency_missing Meta 0

execute store success score #cu$dependency-math Meta run function math:version

execute if score #cu$dependency-math Meta matches 0 run scoreboard players set #cu$dependency_missing Meta 1

execute store success score #cu$broadcast_type Meta if entity @a

execute if score #cu$broadcast_type Meta matches 0 if score #cu$dependency_missing Meta matches 1 run say [Creative Utilities] Missing dependency:
execute if score #cu$broadcast_type Meta matches 0 if score #cu$dependency-math Meta matches 0 run say  - Math Integraion (https://github.com/OKTW-Network/Math-integration)

execute if score #cu$broadcast_type Meta matches 1 if score #cu$dependency_missing Meta matches 1 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Missing dependency: ","color":"red"}]
execute if score #cu$broadcast_type Meta matches 1 if score #cu$dependency-math Meta matches 0 run tellraw @a ["",{"text":" - "},{"text":"Math Integraion","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":"Click here for the Github page"},"clickEvent":{"action":"open_url","value":"https://github.com/OKTW-Network/Math-integration"}}]
