data modify storage cu:string broadcast.input.speaker_name set from storage cu:version broadcast_relation.input.datapack_name
data modify storage cu:string broadcast.input.message set from storage cu:version broadcast_relation.result.message
function cu:string/broadcast
