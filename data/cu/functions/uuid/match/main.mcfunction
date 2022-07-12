function cu:uuid/match/get-object
execute if score #UUID.match.object0 cu = #UUID.match.subject0 cu if score #UUID.match.object1 cu = #UUID.match.subject1 cu if score #UUID.match.object2 cu = #UUID.match.subject2 cu if score #UUID.match.object3 cu = #UUID.match.subject3 cu run tag @s add UUIDMatch
