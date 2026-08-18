data merge storage cu:meta {}
scoreboard objectives add cu-meta dummy
execute unless score #setup_condition cu-meta matches 1..2 run return fail

function cu:_func/register/general
function cu:config/initialize
function cu:dimension/initialize
function cu:_func/update_version
execute as @a run function cu:player/initialize
function cu:tick_schedule/initialize

scoreboard players set #setup_condition cu-meta 2
