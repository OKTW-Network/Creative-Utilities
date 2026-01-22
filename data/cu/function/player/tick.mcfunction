execute unless score @s cu-io.player.trigger.leave_game_record matches -2147483648..2147483647 run function cu:player/trigger/first_time_join_game
execute if score @s cu-io.player.trigger.leave_game_record matches 1.. run function cu:player/trigger/join_game
function cu:player/trigger/using_item/tick
function cu:player/trigger/input_forward
function cu:player/trigger/input_backward
function cu:player/trigger/input_left
function cu:player/trigger/input_right
function cu:player/trigger/input_sneak
function cu:player/trigger/input_sprint