scoreboard objectives add Meta dummy
execute unless score #cu$setup Meta matches 1 run function cu:setup
execute unless score #cu$setup Meta matches 1 run return fail

function cu:meta/register
function #cu:config
function cu:dimension/initialize
function cu:check-version
execute as @a run function cu:initial-player
function #cu:tick_schedule
