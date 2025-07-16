# move the arena display over there
execute store result entity @s Pos[0] double 0.1 run scoreboard players get pos_x paintball
execute store result entity @s Pos[1] double 0.1 run scoreboard players get pos_y paintball
execute store result entity @s Pos[2] double 0.1 run scoreboard players get pos_z paintball

# stretch the display
execute store result entity @s transformation.scale[0] double 0.1 run scoreboard players get size_x paintball
execute store result entity @s transformation.scale[1] double 0.1 run scoreboard players get size_y paintball
execute store result entity @s transformation.scale[2] double 0.1 run scoreboard players get size_z paintball

