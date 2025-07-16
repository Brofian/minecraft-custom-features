# prevent the item from being picked up
data merge entity @s {\
    PickupDelay: 100s, \
    Invulnerable: 1b, \
    Glowing: 0b, \
    NoGravity: 1b, \
    Item: { \
        components: { \
            "minecraft:max_stack_size":1, \
            "minecraft:item_model":"air" \
        } \
    }\
}

# summon block_display
summon block_display ~ ~ ~ {\
    NoGravity:1b,\
    transformation: {\
        left_rotation: [0f,0f,0f,1f], \
        right_rotation: [0f,0f,0f,1f], \
        translation: [-0.1f,-0.1f,-0.1f], \
        scale:[0.2f,0.2f,0.2f]\
    }, \
    block_state: {Name:"minecraft:green_wool"},\
    Tags: ["paintball_mine_display"]\
}

# prime the element with 10 seconds of time
scoreboard players set @s paintball 100
tag @s add paintball_mine