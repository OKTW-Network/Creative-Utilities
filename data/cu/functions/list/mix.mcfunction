data modify storage cu:list mix.subject append from storage cu:list mix.input[0]
execute if data storage cu:list mix.input[-1] run data modify storage cu:list mix.subject append from storage cu:list mix.input[-1]
data remove storage cu:list mix.input[0]
data remove storage cu:list mix.input[-1]

execute if data storage cu:list mix.input[0] run function cu:list/mix
