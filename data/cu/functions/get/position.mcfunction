execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Tags:["GetPosition"],Particle:"block air",Radius:0.125f,WaitTime:2147483647}
data modify storage cu:get position set from entity @e[tag=GetPos,limit=1] Pos
kill @e[tag=GetPosition]
