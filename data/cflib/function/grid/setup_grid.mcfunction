kill @e[tag=grid_cell]
tag @s add grid_spawner

scoreboard players set GRID_WIDTH cflib_general 11
scoreboard players set GRID_HEIGHT cflib_general 7
scoreboard players set GRID_LENGTH cflib_general 11

scoreboard players operation GRID_X cflib_general = GRID_WIDTH cflib_general
scoreboard players operation GRID_X cflib_general /= TWO cflib_constants
scoreboard players operation GRID_Y cflib_general = GRID_HEIGHT cflib_general
scoreboard players operation GRID_Y cflib_general /= TWO cflib_constants
scoreboard players operation GRID_Z cflib_general = GRID_LENGTH cflib_general
scoreboard players operation GRID_Z cflib_general /= TWO cflib_constants

function cflib:grid/walk/reset_x
function cflib:grid/walk/reset_y
function cflib:grid/walk/reset_z

function cflib:grid/walk/x
