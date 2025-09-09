############################################
# General                                  #
############################################

# Print version on load
# integer, 0 ~ 2, default: 1
# values:
#  0: Do not print.
#  1: Always.
#  2: Only print if the version changed.
scoreboard players set #cu$general.broadcast_version_on_load Config 1

############################################
# Trigger                                  #
############################################

  ########################################
  # Use item                             #
  ########################################

# For cu, this only means [Use] the "minecraft:carrot_on_a_stick".
# [Use] means the control button "Use Item/Place Block" in the game.

# Recorder timeout
# interger, 1 ~ 72000, tick, default: 1200
scoreboard players set #cu$trigger.use_item.record_timeout Config 1200
