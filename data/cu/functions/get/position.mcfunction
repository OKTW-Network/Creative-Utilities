execute at @s run summon minecraft:marker ~ ~ ~ {Tags:["cu.dummy.getPosition"]}
data modify storage cu:get position set from entity @e[tag=cu.dummy.getPosition,limit=1] Pos
kill @e[tag=cu.dummy.getPosition]
