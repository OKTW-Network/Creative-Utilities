scoreboard players set #cu_version_x.*.*-* Meta 1
scoreboard players set #cu_version_*.x.*-* Meta 0
scoreboard players set #cu_version_*.*.x-* Meta 2
scoreboard players set #cu_version_*.*.*-x Meta 0


scoreboard players operation #new_x.*.*-* Version = #cu_version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #cu_version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #cu_version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #cu_version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = #cu_currently_version_x.*.*-* Meta
scoreboard players operation #currently_*.x.*-* Version = #cu_currently_version_*.x.*-* Meta
scoreboard players operation #currently_*.*.x-* Version = #cu_currently_version_*.*.x-* Meta
scoreboard players operation #currently_*.*.*-x Version = #cu_currently_version_*.*.*-x Meta
function cu:version/check

function cu:version/build-new
function cu:version/build-currently

execute if score #none Version matches 1 if score #cu_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 1 if score #higher Version matches 1 if score #cu_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.currently","storage":"cu:resources","interpret":true},{"text":" -> ","color":"green"},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 1 if score #lower Version matches 1 if score #cu_print_version Config matches 1..2 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.currently","storage":"cu:resources","interpret":true},{"text":" -> ","color":"red"},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 0 if score #none Version matches 0 if score #cu_print_version Config matches 2 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.new","storage":"cu:resources","interpret":true}]

scoreboard players operation #cu_currently_version_x.*.*-* Meta = #cu_version_x.*.*-* Meta
scoreboard players operation #cu_currently_version_*.x.*-* Meta = #cu_version_*.x.*-* Meta
scoreboard players operation #cu_currently_version_*.*.x-* Meta = #cu_version_*.*.x-* Meta
scoreboard players operation #cu_currently_version_*.*.*-x Meta = #cu_version_*.*.*-x Meta

scoreboard players remove @s versionCU 0
execute as @a unless score @s versionCU = #cu_currently_version Meta run function cu:debug/remove_init_tag
execute as @a unless score @s versionCU = #cu_currently_version Meta run scoreboard players operation @s versionCU = #cu_currently_version Meta
