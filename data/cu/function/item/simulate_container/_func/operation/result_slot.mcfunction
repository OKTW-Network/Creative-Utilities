data modify storage cu:internal dummy set from block ~ ~ ~ Items
data remove storage cu:internal dummy[].id
data remove storage cu:internal dummy[].count
data remove storage cu:internal dummy[].components
data modify storage cu:io item.simulate_container.Result append from storage cu:internal dummy