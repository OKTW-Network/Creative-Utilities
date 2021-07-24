function cu:version/absolute

execute if score #currently_*.*.*-x Version matches 1.. run data modify storage cu:resources version.currently set value '["",{"score":{"name":"#currently_x.*.*-*","objective":"Version"}},{"text":"."},{"score":{"name":"#currently_*.x.*-*","objective":"Version"}},{"text":"."},{"score":{"name":"#currently_*.*.x-*","objective":"Version"}},{"text":"-pre"},{"score":{"name":"#currently_*.*.*-x","objective":"Version"}}]'
execute if score #currently_*.*.*-x Version matches 0 run data modify storage cu:resources version.currently set value '["",{"score":{"name":"#currently_x.*.*-*","objective":"Version"}},{"text":"."},{"score":{"name":"#currently_*.x.*-*","objective":"Version"}},{"text":"."},{"score":{"name":"#currently_*.*.x-*","objective":"Version"}}]'
