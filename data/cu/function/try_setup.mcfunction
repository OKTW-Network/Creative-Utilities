scoreboard players reset #setup_condition cu-meta
execute if function cu:_func/rearrange_folder_datapack run return run scoreboard players set #setup_condition cu-meta 1
execute if function cu:_func/rearrange_zip_datapack run return run scoreboard players set #setup_condition cu-meta 1
return fail
