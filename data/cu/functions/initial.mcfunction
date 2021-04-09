function #cu:scoreboard-register
function #cu:storage-register
function #cu:bossbar-register

function #cu:config

function cu:check-version

function cu:debug/stop_function
function cu:debug/hide_bossbar

execute in cu:data_temp run function cu:dimension/data_temp

execute as @a run function cu:initial-player

execute if score #cu$print_init Config matches 1 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
