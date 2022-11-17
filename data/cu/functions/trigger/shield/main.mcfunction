execute if entity @s[tag=!cu.trigger.usingShield,tag=cu._status.usingShield] run function cu:trigger/shield/end
execute if entity @s[tag=cu.trigger.usingShield,tag=!cu._status.usingShield] run function cu:trigger/shield/start
scoreboard players add @s[tag=cu.trigger.usingShield] cu.trigger.useShieldCounter 1
execute if score @s cu.trigger.useShieldCounter matches 5 run function cu:trigger/shield/ready

tag @s remove cu.trigger.usingShield
