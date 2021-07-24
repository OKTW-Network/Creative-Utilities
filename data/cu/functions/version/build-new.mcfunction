function cu:version/absolute

execute if score #new_*.*.*-x Version matches 1.. run data modify storage cu:resources version.new set value '["",{"score":{"name":"#new_x.*.*-*","objective":"Version"}},{"text":"."},{"score":{"name":"#new_*.x.*-*","objective":"Version"}},{"text":"."},{"score":{"name":"#new_*.*.x-*","objective":"Version"}},{"text":"-pre"},{"score":{"name":"#new_*.*.*-x","objective":"Version"}}]'
execute if score #new_*.*.*-x Version matches 0 run data modify storage cu:resources version.new set value '["",{"score":{"name":"#new_x.*.*-*","objective":"Version"}},{"text":"."},{"score":{"name":"#new_*.x.*-*","objective":"Version"}},{"text":"."},{"score":{"name":"#new_*.*.x-*","objective":"Version"}}]'
