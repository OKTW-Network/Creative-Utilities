scoreboard objectives add temp dummy
scoreboard objectives add Config dummy

scoreboard objectives add cu dummy "@cu"
scoreboard objectives add cu-io dummy
scoreboard objectives add cu-internal dummy

scoreboard objectives add cu-meta.current_entity_version_x dummy
scoreboard objectives add cu-meta.current_entity_version_y dummy
scoreboard objectives add cu-meta.current_entity_version_z dummy
scoreboard objectives add cu-meta.previous_entity_version_x dummy
scoreboard objectives add cu-meta.previous_entity_version_y dummy
scoreboard objectives add cu-meta.previous_entity_version_z dummy
scoreboard objectives add cu.player.timer.input_forward dummy
scoreboard objectives add cu.player.timer.input_backward dummy
scoreboard objectives add cu.player.timer.input_left dummy
scoreboard objectives add cu.player.timer.input_right dummy
scoreboard objectives add cu.player.timer.input_jump dummy
scoreboard objectives add cu.player.timer.input_sneak dummy
scoreboard objectives add cu.player.timer.input_sprint dummy
scoreboard objectives add cu-internal.player.trigger.leave_game minecraft.custom:minecraft.leave_game

# data get storage cu:io
data remove storage cu:internal {}
data remove storage cu:static {}
