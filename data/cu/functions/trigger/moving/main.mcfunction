execute store result score #trigger.moving.fall cu run data get entity @s FallDistance 1000
execute store result score #trigger.moving.lift cu run data get entity @s Motion[1] 1000

scoreboard players set #trigger.moving cu 0
execute if entity @s[tag=cu._status.moving] run scoreboard players set #trigger.moving cu 1

function cu:trigger/moving/untag

execute if entity @s[scores={cu.trigger.moving.walk=1..}] run function cu:trigger/moving/tag/walk
execute if entity @s[scores={cu.trigger.moving.walkOnWater=1..}] run function cu:trigger/moving/tag/walk_on_water
execute if entity @s[scores={cu.trigger.moving.walkUnderWater=1..}] run function cu:trigger/moving/tag/walk_under_water
execute if entity @s[scores={cu.trigger.moving.crouch=1..}] run function cu:trigger/moving/tag/crouch
execute if entity @s[scores={cu.trigger.moving.sprint=1..}] run function cu:trigger/moving/tag/sprint
execute if entity @s[scores={cu.trigger.moving.swim=1..}] run function cu:trigger/moving/tag/swim
execute if entity @s[scores={cu.trigger.moving.climb=1..}] run function cu:trigger/moving/tag/climb
execute if score #trigger.moving.fall cu matches 1.. run function cu:trigger/moving/tag/fall
execute if score #trigger.moving.lift cu matches 0.. run function cu:trigger/moving/tag/lift
execute if entity @s[scores={cu.trigger.moving.fly=1..}] run function cu:trigger/moving/tag/fly
execute if entity @s[scores={cu.trigger.moving.aviate=1..}] run function cu:trigger/moving/tag/aviate
execute if entity @s[scores={cu.trigger.moving.ridePig=1..}] run function cu:trigger/moving/tag/ride_pig
execute if entity @s[scores={cu.trigger.moving.rideHorse=1..}] run function cu:trigger/moving/tag/ride_horse
execute if entity @s[scores={cu.trigger.moving.rideStrider=1..}] run function cu:trigger/moving/tag/ride_strider
execute if entity @s[scores={cu.trigger.moving.rideBoat=1..}] run function cu:trigger/moving/tag/ride_boat
execute if entity @s[scores={cu.trigger.moving.rideMinecart=1..}] run function cu:trigger/moving/tag/ride_minecart

execute if score #trigger.moving cu matches 1 if entity @s[tag=!cu._status.moving] run function #minecraft:moving-end
execute if score #trigger.moving cu matches 0 if entity @s[tag=cu._status.moving] run function #minecraft:moving-start
