data modify storage cu:internal dummy set from storage cu:internal item.simulate_container.current.value
data modify storage cu:internal dummy[] merge value {id:"minecraft:air",count:0}
data modify block ~ ~ ~ Items append from storage cu:internal dummy[]