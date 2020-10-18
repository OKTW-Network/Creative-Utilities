execute store result score #object0 UUIDMatch run data get entity @s UUID[0]
execute store result score #object1 UUIDMatch run data get entity @s UUID[1]
execute store result score #object2 UUIDMatch run data get entity @s UUID[2]
execute store result score #object3 UUIDMatch run data get entity @s UUID[3]

execute if score #custom UUIDMatch matches 1 run function cu:uuid/match/get-object-custom
