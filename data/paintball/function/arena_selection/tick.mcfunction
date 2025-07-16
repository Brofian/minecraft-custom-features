# teleport the block_display in front of the player
execute as @a at @s \
    positioned ^ ^1.5 ^2.5 \
    align xyz \
    run tp @e[distance=..10,tag=block_selector] ~-0.05 ~-0.05 ~-0.05



execute as @a if score @s paintball matches 1.. run scoreboard players remove @s paintball 1
execute as @a if score @s paintball matches 1 run advancement revoke @s only paintball:trigger_arena