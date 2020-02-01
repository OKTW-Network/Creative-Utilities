function cu:debug/stop_function

function cu:meta/scoreboard/register
function cu:config
function cu:version_check

execute as @a[tag=!InitializedCUScore] run function cu:meta/scoreboard/set_player_score

function cu:mini_uuid/meta/storage/register
function cu:version/meta/storage/register

function cu:meta/bossbar/register
execute as @a[tag=!InitializedCUBossBar] run function cu:meta/bossbar/set_player_visible
function cu:debug/unvisible_bossbar

execute if score #cu_print_init Config matches 1 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
