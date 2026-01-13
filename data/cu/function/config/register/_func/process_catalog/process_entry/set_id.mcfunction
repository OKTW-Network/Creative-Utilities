data modify storage cu:internal config.register.entry_result.id set string storage cu:internal config.register.current_entry.id
execute unless data storage cu:internal config.register.group_path[-1] run return 1
data modify storage cu:internal dummy set value {string1:'',string2:'.',string3:''}
data modify storage cu:internal dummy.string1 set from storage cu:internal config.register.group_path[-1]
data modify storage cu:internal dummy.string3 set string storage cu:internal config.register.current_entry.id
function cu:data/string/lazy_join3 with storage cu:internal dummy
data modify storage cu:internal config.register.entry_result.id set from storage cu:io data.string.lazy_join3.Result
return 2