execute if entity @s[tag=!cu.trigger.usingShield,tag=cu._status.usingShield] run function cu:trigger/shield/using_end
execute if entity @s[tag=cu.trigger.usingShield,tag=!cu._status.usingShield] run function cu:trigger/shield/using_start
scoreboard players add @s[tag=cu.trigger.usingShield] cu.trigger.usingShieldCounter 1
execute if score @s cu.trigger.usingShieldCounter matches 5 run function cu:trigger/shield/ready

tag @s remove cu.trigger.usingShield
