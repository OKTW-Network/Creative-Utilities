############################################
# General                                  #
############################################

# Allow version prompt print out while initializing
# 0 = don't print anything, 1 = only print while version changed, 2 = always print version when /reload
# integer, default: 2
scoreboard players set #cu$print_version Config 2

# Allow initial prompt print out while initializing
# boolean, default: 0
scoreboard players set #cu$print_init Config 0

# Allow config prompt print out while initializing
# boolean, default: 0
scoreboard players set #cu$print_config Config 0

############################################
# Accessibility                            #
############################################

  ########################################
  # Trigger                              #
  ########################################

    ####################################
    # Use item                         #
    ####################################

# For creative utilities, this only means [Use] the "carrot on a stick".
# [Use] means the control button "Use Item/Place Block" in the game.

# Continuously [Use] timeout timer
# The clicks between ticks will count as successful double click.
# interger, 1 ~ 20, tick, default: 8
scoreboard players set #cu$use_item_click_timeout Config 8
