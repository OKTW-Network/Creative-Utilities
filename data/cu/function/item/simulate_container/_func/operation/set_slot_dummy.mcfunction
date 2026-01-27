data modify storage cu:internal dummy set from storage cu:internal item.simulate_container.current.value
data remove storage cu:internal dummy[].components
data modify storage cu:internal dummy[] merge value {id:"minecraft:structure_void",count:1,components:{"minecraft:custom_data":{"cu:custom_id":{namespace:"cu",id:"function.item.simulate_container.dummy"}}}}
data modify block ~ ~ ~ Items set from storage cu:internal dummy