# Reminder
#  Entities without a hitbox cannot be selected.
scoreboard players set #dimension.simulation.primary.block_testing.void_entity.Result cu-internal 0
execute in cu:simulation positioned 9 1 9 align xyz as @e[dx=6,dy=6,dz=6] run function cu:dimension/simulation/primary/block_testing/_func/void_entity
return run execute unless score #dimension.simulation.primary.block_testing.void_entity.Result cu-internal matches 0 run scoreboard players get #dimension.simulation.primary.block_testing.void_entity.Result cu-internal
