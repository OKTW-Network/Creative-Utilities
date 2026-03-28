scoreboard players reset #cu$setup Meta
scoreboard players reset #cu$pack_is_folder Meta
scoreboard players reset #cu$pack_is_zip Meta

scoreboard objectives remove cu-io
scoreboard objectives remove cu-internal
# scoreboard objectives remove cu-meta.current_entity_version_x
# scoreboard objectives remove cu-meta.current_entity_version_y
# scoreboard objectives remove cu-meta.current_entity_version_z
# scoreboard objectives remove cu-meta.previous_entity_version_x
# scoreboard objectives remove cu-meta.previous_entity_version_y
# scoreboard objectives remove cu-meta.previous_entity_version_z
scoreboard objectives remove cu-io.player.trigger.leave_game_record
scoreboard objectives remove cu-io.player.trigger.using_item_record
scoreboard objectives remove cu-io.player.trigger.input_forward_record
scoreboard objectives remove cu-io.player.trigger.input_backward_record
scoreboard objectives remove cu-io.player.trigger.input_left_record
scoreboard objectives remove cu-io.player.trigger.input_right_record
scoreboard objectives remove cu-io.player.trigger.input_jump_record
scoreboard objectives remove cu-io.player.trigger.input_sneak_record
scoreboard objectives remove cu-io.player.trigger.input_sprint_record

# Impossible to remove the root through the command.
# data remove storage cu:io {}
# data remove storage cu:internal {}
# data remove storage cu:storage {}
# data remove storage cu:cache {}
data remove storage cu:io block
data remove storage cu:io config
data remove storage cu:io data
data remove storage cu:io dimension
data remove storage cu:io entity
data remove storage cu:io item
data remove storage cu:io player
data remove storage cu:io version
data remove storage cu:io world_storage
data remove storage cu:internal dummy
data remove storage cu:internal block
data remove storage cu:internal config
data remove storage cu:internal data
data remove storage cu:internal dimension
data remove storage cu:internal entity
data remove storage cu:internal item
data remove storage cu:internal player
data remove storage cu:internal version
data remove storage cu:internal world_storage
data remove storage cu:cache config_registry

schedule clear cu:dimension/simulation/primary/setup/main
schedule clear #cu:2_tick
schedule clear #cu:5_tick
schedule clear #cu:10_tick
schedule clear #cu:20_tick
schedule clear #cu:200_tick
schedule clear #cu:600_tick
schedule clear #cu:1200_tick

datapack disable "file/Creative-Utilities"
datapack disable "file/Creative-Utilities.zip"
