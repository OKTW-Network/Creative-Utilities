scoreboard objectives add temp dummy

scoreboard objectives add cu dummy "@cu"
scoreboard objectives add cu-io dummy
scoreboard objectives add cu-internal dummy

scoreboard objectives add cu-meta.current_entity_version_x dummy
scoreboard objectives add cu-meta.current_entity_version_y dummy
scoreboard objectives add cu-meta.current_entity_version_z dummy
scoreboard objectives add cu-meta.previous_entity_version_x dummy
scoreboard objectives add cu-meta.previous_entity_version_y dummy
scoreboard objectives add cu-meta.previous_entity_version_z dummy
scoreboard objectives add cu-io.player.trigger.leave_game_record minecraft.custom:minecraft.leave_game
scoreboard objectives add cu-io.player.trigger.input_forward_record dummy
scoreboard objectives add cu-io.player.trigger.input_backward_record dummy
scoreboard objectives add cu-io.player.trigger.input_left_record dummy
scoreboard objectives add cu-io.player.trigger.input_right_record dummy
scoreboard objectives add cu-io.player.trigger.input_jump_record dummy
scoreboard objectives add cu-io.player.trigger.input_sneak_record dummy
scoreboard objectives add cu-io.player.trigger.input_sprint_record dummy

# data remove storage cu:io
data remove storage cu:internal {}
execute unless data storage cu:storage player run data merge storage cu:storage {player:[]}
execute unless data storage cu:storage world run data merge storage cu:storage {world:[]}
