execute unless function cu:dimension/simulation/primary/block_testing/reset_testing_area run return fail
execute in cu:simulation positioned 9 1 9 unless function cu:dimension/simulation/primary/block_testing/_func/summon_marker run return fail
execute in cu:simulation positioned 12.5 4.5 12.5 unless function cu:dimension/simulation/primary/block_testing/_func/summon_center_marker run return fail
return 1
