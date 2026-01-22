scoreboard objectives add Meta dummy
execute unless score #cu$setup Meta matches 1 run function cu:setup
execute unless score #cu$setup Meta matches 1 run return fail

function cu:meta/register
function cu:config/initialize
function cu:dimension/initialize
function cu:_func/update_version
execute as @a run function cu:player/initialize
function cu:tick_schedule/initialize
