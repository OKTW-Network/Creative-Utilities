function cu:trigger/health
function cu:trigger/awake
function cu:trigger/sleeping
function cu:trigger/moving/main
function cu:trigger/move_to_block
function cu:trigger/sneaking
function cu:trigger/shield/main

execute if entity @s[tag=cu._task.trigger.health_changed] run function #minecraft:health_changed
tag @s[tag=cu._task.trigger.health_changed] remove cu._task.trigger.health_changed
execute if entity @s[tag=cu._task.trigger.max_health_changed] run function #minecraft:max_health_changed
tag @s[tag=cu._task.trigger.max_health_changed] remove cu._task.trigger.max_health_changed
execute if entity @s[tag=cu._task.trigger.sleep] run function #minecraft:sleep
tag @s[tag=cu._task.trigger.sleep] remove cu._task.trigger.sleep
execute if entity @s[tag=cu._task.trigger.awake] run function #minecraft:awake
tag @s[tag=cu._task.trigger.awake] remove cu._task.trigger.awake
execute if entity @s[tag=cu._task.trigger.sleeping_end] run function #minecraft:sleeping_end
tag @s[tag=cu._task.trigger.sleeping_end] remove cu._task.trigger.sleeping_end
execute if entity @s[tag=cu._task.trigger.sleeping_start] run function #minecraft:sleeping_start
tag @s[tag=cu._task.trigger.sleeping_start] remove cu._task.trigger.sleeping_start
execute if entity @s[tag=cu._task.trigger.moving_end] run function #minecraft:moving_end
tag @s[tag=cu._task.trigger.moving_end] remove cu._task.trigger.moving_end
execute if entity @s[tag=cu._task.trigger.moving_start] run function #minecraft:moving_start
tag @s[tag=cu._task.trigger.moving_start] remove cu._task.trigger.moving_start
execute if entity @s[tag=cu._task.trigger.move_to_block] run function #minecraft:move_to_block
tag @s[tag=cu._task.trigger.move_to_block] remove cu._task.trigger.move_to_block
execute if entity @s[tag=cu._task.trigger.sneaking_end] run function #minecraft:sneaking_end
tag @s[tag=cu._task.trigger.sneaking_end] remove cu._task.trigger.sneaking_end
execute if entity @s[tag=cu._task.trigger.sneaking_start] run function #minecraft:sneaking_start
tag @s[tag=cu._task.trigger.sneaking_start] remove cu._task.trigger.sneaking_start
execute if entity @s[tag=cu._task.trigger.using_shield_end] run function #minecraft:using_shield_end
tag @s[tag=cu._task.trigger.using_shield_end] remove cu._task.trigger.using_shield_end
execute if entity @s[tag=cu._task.trigger.using_shield_start] run function #minecraft:using_shield_start
tag @s[tag=cu._task.trigger.using_shield_start] remove cu._task.trigger.using_shield_start
execute if entity @s[tag=cu._task.trigger.shield_ready] run function #minecraft:shield_ready
tag @s[tag=cu._task.trigger.shield_ready] remove cu._task.trigger.shield_ready

execute if score @s cu.trigger.useItemRecord matches 0..2147483647 run function cu:trigger/use_item/record
execute if score @s cu.trigger.useItemCounter matches 1.. run function cu:trigger/use_item/main
execute if score @s cu.trigger.jumpCounter matches 1.. run function cu:trigger/jump
execute if score @s cu.trigger.leaveGameCounter matches 1.. run function cu:trigger/join_game
execute unless score @s cu.trigger.leaveGameCounter matches -2147483648..2147483647 run function cu:trigger/first_time_join_game
