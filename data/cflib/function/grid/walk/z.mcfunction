# for every z: execute step function
execute at @s run function cflib:grid/setup_grid_step

execute at @s \
        if function cflib:grid/move/z_add \
        run scoreboard players add GRID_Z cflib_general 1

execute if score GRID_Z cflib_general <= GRID_LENGTH cflib_general \
        run function cflib:grid/walk/z