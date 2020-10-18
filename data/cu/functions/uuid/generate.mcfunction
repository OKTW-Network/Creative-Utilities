summon area_effect_cloud ~ ~ ~ {Tags:["UUIDGenerate"],Particle:"block air",Radius:0.125f,WaitTime:2147483647}
data modify storage cu:uuid generate set from entity @e[tag=UUIDGenerate,limit=1] UUID
kill @e[tag=UUIDGenerate]
