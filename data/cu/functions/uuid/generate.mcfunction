summon area_effect_cloud ~ ~ ~ {Tags:["UUIDResult"],Particle:"block air",Radius:0.125f,WaitTime:2147483647}
data modify storage cu:resources UUID set from entity @e[tag=UUIDResult,limit=1] UUID
kill @e[tag=UUIDResult]
