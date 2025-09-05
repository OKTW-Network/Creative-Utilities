data remove storage cu:data_storage create_container.result
data modify storage cu:temp data_storage.create_container._summonData set value {Tags:["cu.data_storage.container","cu._tag.data_storage.create_container.init"]}
execute if data storage cu:data_storage create_container.tags[0] run data modify storage cu:temp data_storage.create_container._summonData.Tags append from storage cu:data_storage create_container.tags[]
execute as @e[tag=cu.data_storage.base,limit=1] at @s summon minecraft:marker run data modify entity @s {} merge from storage cu:temp data_storage.create_container._summonData
data modify storage cu:data_storage create_container.result set from entity @e[tag=cu._tag.data_storage.create_container.init,limit=1] UUID
tag @e[tag=cu._tag.data_storage.create_container.init] remove cu._tag.data_storage.create_container.init

execute if data storage cu:data_storage create_container.result run tellraw @a[tag=cu._tag.listenDebugMessage] ["Created data container, UUID: ",{"type":"nbt","source":"storage","nbt":"create_container.result","storage":"cu:data_storage"}]
execute unless data storage cu:data_storage create_container.result run tellraw @a[tag=cu._tag.listenDebugMessage] ["",{"text":"Failed to create the data container","color":"red"}]

data remove storage cu:data_storage create_container.tags
data remove storage cu:temp data_storage.create_container._summonData
