execute if data storage cu:entity target.pick.uuid_in_list.input[0] as @e[tag=cu._tag.entity.target.selected] run function cu:entity/target/pick/uuid_in_list/_check
tag @e[tag=cu._tag.entity.target.selected,tag=!cu._tag.entity.target.picked] remove cu._tag.entity.target.selected
tag @e remove cu._tag.entity.target.picked

data remove storage cu:entity target.pick.uuid_in_list.input
