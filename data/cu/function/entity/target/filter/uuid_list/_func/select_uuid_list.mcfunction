execute summon area_effect_cloud run function cu:entity/target/filter/uuid_list/_func/ownable_select
data remove storage cu:io entity.target.filter.uuid_list.Input[0]
execute if data storage cu:io entity.target.filter.uuid_list.Input[0] run function cu:entity/target/filter/uuid_list/_func/select_uuid_list
