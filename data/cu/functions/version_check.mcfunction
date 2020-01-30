scoreboard players set #cu_version Meta 1010

execute unless score #cu_version Meta = #cu_currently_version Meta if score #cu_version Meta > #cu_currently_version Meta if score #cu_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#cu_currently_version","objective":"Meta"}},{"text":" -> ","color":"green"},{"score":{"name":"#cu_version","objective":"Meta"}}]
execute unless score #cu_version Meta = #cu_currently_version Meta if score #cu_version Meta < #cu_currently_version Meta if score #cu_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#cu_currently_version","objective":"Meta"}},{"text":" -> ","color":"red"},{"score":{"name":"#cu_version","objective":"Meta"}}]
execute if score #cu_version Meta = #cu_currently_version Meta if score #cu_print_version Config matches 2 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Version: "},{"score":{"name":"#cu_version","objective":"Meta"}}]

scoreboard players operation #cu_currently_version Meta = #cu_version Meta

scoreboard players remove @s versionCU 0
execute as @a unless score @s versionCU = #cu_currently_version Meta run function cu:debug/remove_init_tag
execute as @a unless score @s versionCU = #cu_currently_version Meta run scoreboard players operation @s versionCU = #cu_currently_version Meta
