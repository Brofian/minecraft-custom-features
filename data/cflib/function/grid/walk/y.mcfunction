# for every y: walk z
function cflib:grid/walk/z
function cflib:grid/walk/reset_z

execute at @s \
        if function cflib:grid/move/y_add \
        run scoreboard players add GRID_Y cflib_general 1

execute if score GRID_Y cflib_general <= GRID_HEIGHT cflib_general \
        run function cflib:grid/walk/y