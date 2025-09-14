data remove storage cu:io value.generate_uuid.Result

execute summon minecraft:marker run function cu:value/generate_uuid/_func

return run execute if data storage cu:io value.generate_uuid.Result
