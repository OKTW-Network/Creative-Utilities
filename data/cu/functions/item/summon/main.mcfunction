execute if data storage cu:item summon.input{} run function cu:item/summon/_resolve_object_input

execute if data storage cu:item summon.input[0] run function cu:item/summon/_recursive

data remove storage cu:item summon.input
scoreboard players reset #item.summon.pickupDelay cu
scoreboard players reset #item.summon.invulnerable cu
scoreboard players reset #item.summon.preventDespawn cu
