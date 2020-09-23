function cu:debug/stop_function

function cu:meta/scoreboard/register
function cu:config
function cu:check-dependency
function cu:check-version

function cu:get/meta/storage/register
function cu:list/meta/scoreboard/register
function cu:uuid/meta/storage/register
function cu:version/meta/storage/register

function cu:list/meta/storage/register

function cu:meta/bossbar/register
function cu:debug/hide_bossbar

execute if score #cu_print_init Config matches 1 run tellraw @a ["",{"text":"[Creative Utilities]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
