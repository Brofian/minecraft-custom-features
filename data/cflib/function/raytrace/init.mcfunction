data merge entity @s {\
    NoGravity: 1b, \
    Tags: ["ray"], \
}
#    transformation:{\
#        left_rotation:[0f,0f,0f,1f],\
#        right_rotation:[0f,0f,0f,1f],\
#        translation:[0f,0f,0f],\
#        scale:[0.1f,0.1f,0.1f]\
#    },\
#    block_state:{Name:"minecraft:sponge"} \
#}

execute at @p anchored eyes positioned ~ ~1.62 ~ run tp @s ~ ~ ~ ~ ~

scoreboard players set @s cflib_general 50

return 1