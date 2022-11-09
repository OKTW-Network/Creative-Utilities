scoreboard players set #library.experience.extra.result cu 0
function cu:get/equipment-non_picked_up
execute store result score #library.experience.extra.recursiveLimit cu run data get storage cu:get item
execute if score #library.experience.extra.recursiveLimit cu matches 1.. run function cu:library/experience/extra/equipment/_recursive
