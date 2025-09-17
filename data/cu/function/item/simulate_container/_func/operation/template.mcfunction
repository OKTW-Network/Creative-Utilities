data modify storage cu:internal dummy set from block ~ ~ ~ Items
data remove storage cu:internal dummy[].components
data modify storage cu:internal dummy[] merge value {id:"minecraft:structure_void",count:1,components:{"minecraft:custom_data":{cu:{Type:"dummy",id:"item.simulate_container.dummy"}}}}
data modify block ~ ~ ~ Items set from storage cu:internal dummy
