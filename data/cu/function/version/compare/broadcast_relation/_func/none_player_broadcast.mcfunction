data modify storage cu:io data.string.broadcast_raw.Input.speaker_name set from storage cu:io version.compare.broadcast_relation.Input.datapack_name
data modify storage cu:io data.string.broadcast_raw.Input.message set from storage cu:internal version.compare.broadcast_relation.unsolved_message
return run function cu:data/string/broadcast_raw/main