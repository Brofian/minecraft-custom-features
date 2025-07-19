# teleport the block_display in front of the player


execute as @a[tag=paintball_arena_editor] at @s \
    if function cflib:raytrace \
    as @n[tag=ray] at @s \
    align xyz \
    run tp @e[distance=..10,tag=block_selector] ~-0.05 ~ ~-0.05



execute as @a if score @s paintball matches 1.. run scoreboard players remove @s paintball 1
execute as @a if score @s paintball matches 1 run advancement revoke @s only paintball:trigger_arena