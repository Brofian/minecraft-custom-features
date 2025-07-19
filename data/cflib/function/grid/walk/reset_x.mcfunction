tag @s remove moved

execute if score GRID_X cflib_general matches 1.. \
        at @s \
        if function cflib:grid/move/x_sub \
        run scoreboard players remove GRID_X cflib_general 1

execute if entity @s[tag=moved] at @s run function cflib:grid/walk/reset_x