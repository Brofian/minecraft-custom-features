# for every x: walk y
function cflib:grid/walk/y
function cflib:grid/walk/reset_y

execute at @s \
        if function cflib:grid/move/x_add \
        run scoreboard players add GRID_X cflib_general 1

execute if score GRID_X cflib_general <= GRID_WIDTH cflib_general \
        run function cflib:grid/walk/x