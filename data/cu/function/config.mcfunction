############################################
# General                                  #
############################################

# Print version on initializing
# integer, 0 ~ 2, default: 2
# values:
#  0: Do not print anything.
#  1: Only print if the version changed.
#  2: Always.
scoreboard players set #cu$general.print_version Config 2

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
