#Abandoned, replaced with `lazy_volume`.
# Reminder
#  The result cannot be reset if the function failed to instantiate.
scoreboard players reset #entity.target.filter.lax_volume.Result cu-io
$execute store result score #entity.target.filter.lax_volume.Result cu-io run function cu:entity/target/filter/lazy_volume {x_1:$(x_1),y_1:$(y_1),z_1:$(z_1),x_2:$(x_2),y_2:$(y_2),z_2:$(z_2),size_x:$(size_x),size_y:$(size_y),size_z:$(size_z)}
return run execute unless score #entity.target.filter.lax_volume.Result cu-io matches 0 run scoreboard players get #entity.target.filter.lax_volume.Result cu-io
