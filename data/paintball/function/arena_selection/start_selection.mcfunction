function paintball:arena_selection/abort_selection


# summon a new block display
summon block_display ^ ^1.5 ^2.5 {\
    NoGravity:1b,Glowing:1b,transformation:\
        {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},\
    block_state:\
        {Name:"minecraft:glass"},\
    Tags:["block_selector","pos1"]\
    }

return 1