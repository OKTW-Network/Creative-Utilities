summon armor_stand ~ ~ ~ {Tags:["UUIDResult"],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Small:1b}
data modify storage cu:resources UUID set from entity @e[tag=UUIDResult,limit=1] UUID
kill @e[tag=UUIDResult]
