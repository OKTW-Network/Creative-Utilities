summon minecraft:marker ~ ~ ~ {Tags:["cu.dummy.broadcast_speaker"]}
data modify entity @e[tag=cu.dummy.broadcast_speaker,limit=1] CustomName set from storage cu:string broadcast.input.speaker_name
summon minecraft:marker ~ ~ ~ {Tags:["cu.dummy.broadcast_message"]}
data modify entity @e[tag=cu.dummy.broadcast_message,limit=1] CustomName set from storage cu:string broadcast.input.message
execute as @e[tag=cu.dummy.broadcast_speaker] run say @e[tag=cu.dummy.broadcast_message]
kill @e[tag=cu.dummy.broadcast_speaker]
kill @e[tag=cu.dummy.broadcast_message]
