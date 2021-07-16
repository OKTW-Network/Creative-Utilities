execute if score #input cu.string matches 2.. run data modify storage cu:string plural.result set value 's'
execute unless score #input cu.string matches 2.. run data modify storage cu:string plural.result set value ''
