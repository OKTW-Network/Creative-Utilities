execute store result score #trigger.health.new cu run data get entity @s Health 1000000
execute store result score #trigger.maxHealth.new cu run attribute @s minecraft:max_health get 1000000

execute unless score #trigger.health.new cu = @s cu.trigger.lastHealth run tag @s add cu._task.trigger.health_changed
execute unless score #trigger.maxHealth.new cu = @s cu.trigger.lastMaxHealth run tag @s add cu._task.trigger.max_health_changed

scoreboard players operation @s cu.trigger.lastHealth = #trigger.health.new cu
scoreboard players operation @s cu.trigger.lastMaxHealth = #trigger.maxHealth.new cu
