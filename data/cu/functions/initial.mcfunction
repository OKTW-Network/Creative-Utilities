function #cu:scoreboard-register
function #cu:storage-register

function #cu:config

function cu:check-version

# function cu:dimension/initial

execute as @a run function cu:initial-player

function #cu:tick_schedule

execute if score #cu$print_init Config matches 1 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
