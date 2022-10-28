summon minecraft:marker ~ ~ ~ {Tags:["cu.dummy.UUIDGenerator"]}
data modify storage cu:uuid generate.result set from entity @e[tag=cu.dummy.UUIDGenerator,limit=1] UUID
kill @e[tag=cu.dummy.UUIDGenerator]
