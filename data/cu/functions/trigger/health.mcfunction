execute store result score #trigger.health.new cu run data get entity @s Health 1000000
execute store result score #trigger.maxHealth.new cu run attribute @s generic.max_health get 1000000

execute unless score #trigger.health.new cu = @s cu.trigger.lastHealth run function #minecraft:health_changed
execute unless score #trigger.maxHealth.new cu = @s cu.trigger.lastMaxHealth run function #minecraft:health_max_changed

scoreboard players operation @s cu.trigger.lastHealth = #trigger.health.new cu
scoreboard players operation @s cu.trigger.lastMaxHealth = #trigger.maxHealth.new cu
