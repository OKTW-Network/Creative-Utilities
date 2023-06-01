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

# For cu, this only means [Use] the "carrot on a stick".
# [Use] means the control button "Use Item/Place Block" in the game.

# Double click timeout
# The clicks between ticks will count as successful double click.
# interger, 1 ~ 20, tick, default: 8
scoreboard players set #cu$trigger.use_item.double_click_timeout Config 8
