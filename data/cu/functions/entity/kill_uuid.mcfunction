data modify storage cu:entity find_uuid.input set from storage cu:entity kill_uuid.input
function cu:entity/find_uuid/main
kill @e[tag=cu._tag.entity.find_uuid.elect]

data remove storage cu:entity kill_uuid.input
