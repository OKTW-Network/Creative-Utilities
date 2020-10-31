function cu:debug/stop_function

function cu:meta/scoreboard/register
function cu:config
function cu:check-dependency
function cu:check-version

function cu:list/meta/scoreboard/register
function cu:uuid/meta/scoreboard/register

function cu:get/meta/storage/register
function cu:give/meta/storage/register
function cu:replaceitem/meta/storage/register
function cu:compare/meta/storage/register
function cu:list/meta/storage/register
function cu:string/meta/storage/register
function cu:uuid/meta/storage/register
function cu:version/meta/storage/register

function cu:meta/bossbar/register
function cu:debug/hide_bossbar

execute in cu:data_temp run function cu:dimension/data_temp

execute if score #cu_print_init Config matches 1 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
