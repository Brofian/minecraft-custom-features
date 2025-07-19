tag @s remove paintball_arena_editor

# fixate the old block_display
execute as @n[distance=..10,type=block_display,tag=pos2] \
    run function paintball:arena_selection/fixate_block_display

# create the arena display
function paintball:arena_selection/show_arena

# if the selection is only one block, abort the selection
execute if score pos1_x paintball = pos2_x paintball \
        if score pos1_y paintball = pos2_y paintball \
        if score pos1_z paintball = pos2_z paintball \
        run function paintball:arena_selection/abort_selection

# remove the glow from the corners
execute as @e[type=block_display,tag=block_selection] \
    run data merge entity @s {Glowing:0b,transformation:{scale:[1.2f,1.2f,1.2f]}}

return 1