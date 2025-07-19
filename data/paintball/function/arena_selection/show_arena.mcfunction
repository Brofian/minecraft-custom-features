# misuse the return parameter for output
execute unless entity @e[tag=pos1] run return run say no first position found
execute unless entity @e[tag=pos2] run return run say no second position found


# kill all existing arena objects
kill @e[tag=paintball_arena]

# summon a new block display
summon block_display ~ ~ ~ {\
    NoGravity:1b,Glowing:1b,transformation:\
        {left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[1.0f,1.0f,1.0f]},\
    block_state:\
        {Name:"minecraft:blue_stained_glass"},\
    Tags:["paintball_arena"]\
    }



# Get positions into storage
execute store result score pos1_x paintball run data get entity @e[tag=pos1,limit=1] Pos[0]
execute store result score pos1_y paintball run data get entity @e[tag=pos1,limit=1] Pos[1]
execute store result score pos1_z paintball run data get entity @e[tag=pos1,limit=1] Pos[2]
execute store result score pos2_x paintball run data get entity @e[tag=pos2,limit=1] Pos[0]
execute store result score pos2_y paintball run data get entity @e[tag=pos2,limit=1] Pos[1]
execute store result score pos2_z paintball run data get entity @e[tag=pos2,limit=1] Pos[2]



# calculate center
scoreboard players operation center_x paintball = pos1_x paintball
scoreboard players operation center_x paintball += pos2_x paintball
scoreboard players add center_x paintball 3
scoreboard players operation center_x paintball *= TEN paintball
scoreboard players operation center_x paintball /= TWO paintball

scoreboard players operation center_y paintball = pos1_y paintball
scoreboard players operation center_y paintball += pos2_y paintball
scoreboard players add center_y paintball 1
scoreboard players operation center_y paintball *= TEN paintball
scoreboard players operation center_y paintball /= TWO paintball

scoreboard players operation center_z paintball = pos1_z paintball
scoreboard players operation center_z paintball += pos2_z paintball
scoreboard players add center_z paintball 3
scoreboard players operation center_z paintball *= TEN paintball
scoreboard players operation center_z paintball /= TWO paintball


# calculate size
scoreboard players operation size_x paintball = pos1_x paintball
scoreboard players operation size_x paintball -= pos2_x paintball
execute if score size_x paintball matches ..0 run scoreboard players operation size_x paintball *= NEG_ONE paintball
scoreboard players operation size_x paintball *= TEN paintball
scoreboard players add size_x paintball 12


scoreboard players operation size_y paintball = pos1_y paintball
scoreboard players operation size_y paintball -= pos2_y paintball
execute if score size_y paintball matches ..0 run scoreboard players operation size_y paintball *= NEG_ONE paintball
scoreboard players operation size_y paintball *= TEN paintball
scoreboard players add size_y paintball 12

scoreboard players operation size_z paintball = pos1_z paintball
scoreboard players operation size_z paintball -= pos2_z paintball
execute if score size_z paintball matches ..0 run scoreboard players operation size_z paintball *= NEG_ONE paintball
scoreboard players operation size_z paintball *= TEN paintball
scoreboard players add size_z paintball 12


# shift the position by half the size
scoreboard players operation pos_x paintball = size_x paintball
scoreboard players operation pos_x paintball *= NEG_ONE paintball
scoreboard players operation pos_x paintball /= TWO paintball
scoreboard players operation pos_x paintball += center_x paintball

scoreboard players operation pos_y paintball = size_y paintball
scoreboard players operation pos_y paintball *= NEG_ONE paintball
scoreboard players operation pos_y paintball /= TWO paintball
scoreboard players operation pos_y paintball += center_y paintball

scoreboard players operation pos_z paintball = size_z paintball
scoreboard players operation pos_z paintball *= NEG_ONE paintball
scoreboard players operation pos_z paintball /= TWO paintball
scoreboard players operation pos_z paintball += center_z paintball



# apply the calculated values
execute as @n[tag=paintball_arena] run function paintball:arena_selection/configure_arena_display