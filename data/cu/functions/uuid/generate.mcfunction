summon minecraft:marker ~ ~ ~ {Tags:["UUIDGenerate"]}
data modify storage cu:uuid generate set from entity @e[tag=UUIDGenerate,limit=1] UUID
kill @e[tag=UUIDGenerate]
