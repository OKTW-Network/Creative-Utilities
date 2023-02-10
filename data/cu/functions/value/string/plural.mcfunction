execute if score #string.plural.input cu matches 2.. run data modify storage cu:value string.plural.result set value 's'
execute unless score #string.plural.input cu matches 2.. run data modify storage cu:value string.plural.result set value ''

scoreboard players reset #string.plural.input cu
