execute store success score #1 cu-internal run function cu:player/storage/data/lax_get_path {path:'"cu:player_config"[]'}
execute unless score #1 cu-internal matches 0 run return fail
return run function cu:config/record/player/easy_reset
