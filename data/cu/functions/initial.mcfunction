function cu:debug/stop_function

function cu:meta/scoreboard/register
function cu:config
function cu:check-dependency
function cu:check-version

function cu:list/meta/scoreboard/register

function cu:get/meta/storage/register
function cu:list/meta/storage/register
function cu:uuid/meta/storage/register
function cu:version/meta/storage/register

function cu:meta/bossbar/register
function cu:debug/hide_bossbar

execute in cu:data_temp run forceload add 0 0
execute in cu:data_temp run fill 0 0 0 16 0 16 minecraft:bedrock replace
execute in cu:data_temp run setblock 0 1 0 minecraft:shulker_box keep
execute in cu:data_temp run setblock 0 1 1 minecraft:oak_sign keep

execute if score #cu_print_init Config matches 1 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
