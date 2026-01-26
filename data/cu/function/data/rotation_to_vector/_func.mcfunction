data modify entity @s Rotation set from storage cu:io data.rotation_to_vector.Input
tp ^ ^ ^1
data modify storage cu:io data.rotation_to_vector.Result set from entity @s Pos
kill @s
return 1