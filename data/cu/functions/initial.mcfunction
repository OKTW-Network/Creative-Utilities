function #cu:scoreboard-register
function #cu:storage-register

function cu:check-version

execute as @a run function cu:initial-player

function #cu:tick_schedule

function cu:dimension/initial

execute if score #cu$print_init Config matches 1 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
