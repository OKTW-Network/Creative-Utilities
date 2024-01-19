data remove storage cu:entity get.player_name.result

function cu:entity/get/player_head
data modify storage cu:entity get.player_name.result set from storage cu:entity get.player_head.result.tag.SkullOwner.Name

data modify storage cu:get value append from storage cu:entity get.player_name.result
