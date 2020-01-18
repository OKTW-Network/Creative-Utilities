summon armor_stand ~ ~ ~ {Tags:["UUIDResult"],NoGravity:1b,Invisible:1b,Marker:1b,Invulnerable:1b,Small:1b}
execute store result storage cu:resources miniUUID.Most int 1 run data get entity @e[tag=UUIDResult,limit=1] UUIDMost 0.0000000001
execute store result storage cu:resources miniUUID.Least int 1 run data get entity @e[tag=UUIDResult,limit=1] UUIDLeast 0.0000000001
kill @e[tag=UUIDResult]
