execute if score #entity.target.filter.Option.reverse cu-io matches -2147483648..2147483647 run scoreboard players operation #entity.target.filter.Option.invert cu-io = #entity.target.filter.Option.reverse cu-io
execute unless score #entity.target.filter.Option.invert cu-io matches 0..1 run scoreboard players set #entity.target.filter.Option.invert cu-io 0
