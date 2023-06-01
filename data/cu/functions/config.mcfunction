############################################
# General                                  #
############################################

# Allow version prompt print out while initializing
# 0 = don't print anything, 1 = only print while version changed, 2 = always print version when /reload
# integer, default: 2
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
