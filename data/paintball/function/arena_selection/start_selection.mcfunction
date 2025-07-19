function paintball:arena_selection/abort_selection

tag @s add paintball_arena_editor

#summon magma_cube ^ ^1.5 ^2.5 {\
#    NoGravity:1b,Glowing:1b,Size:1,Silent:1b,Invulnerable:1b,NoAI:1b, \
#    active_effects:[{id:"minecraft:invisibility",amplifier:1,duration:-1,show_particles:0b}], \
#    Tags:["block_selector","pos1"]\
#    }


# summon a new block display
summon block_display ^ ^1.5 ^2.5 {\
    NoGravity:1b,Glowing:1b,transformation:\
        {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.1f,1.1f,1.1f]},\
    block_state:\
        {Name:"minecraft:glass"},\
    Tags:["block_selector","pos1"]\
}

return 1