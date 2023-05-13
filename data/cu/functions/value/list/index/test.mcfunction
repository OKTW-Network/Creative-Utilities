data modify storage cu:value list.index.input set value ['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z']
scoreboard players set #value.list.index.start cu 1
scoreboard players set #value.list.index.end cu 0
scoreboard players set #value.list.index.arrange cu 1
scoreboard players set #value.list.index.circular cu 1
function cu:value/list/index/main
tellraw @a [{"nbt":"list.index.result","storage":"cu:value","interpret":false}]
