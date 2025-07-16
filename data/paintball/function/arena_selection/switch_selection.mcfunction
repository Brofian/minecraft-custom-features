# fixate the old block_display
execute as @n[distance=..10,type=block_display,tag=pos1] run function paintball:arena_selection/fixate_block_display



# summon a new block display
summon block_display ^ ^1.5 ^2.5 {\
    NoGravity:1b,Glowing:1b,transformation:\
        {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},\
    block_state:\
        {Name:"minecraft:glass"},\
    Tags:["block_selector","pos2"]\
    }


return 1