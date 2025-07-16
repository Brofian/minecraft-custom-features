data merge entity @s {CustomName:"Greed"}

# spawn particles
particle block{block_state:"minecraft:redstone_block"} ~ ~ ~ 0 0 0 0.1 20 normal

# damage player
damage @p[tag=magnet_target_player] 1 minecraft:thrown by @s from @s

kill @s