# forget all players, that used this vault
data merge block 109 4 545 {server_data:{rewarded_players:[]}}

# spawn particles
execute align xz positioned ~0.5 ~ ~0.5 run particle minecraft:ash ~ ~ ~ 0.3 0.3 0.3 1 1000
particle minecraft:flame ~ ~0.3 ~ 0.1 0.1 0.1 0.1 10

# make sound
playsound minecraft:block.vault.insert_item master @a ~ ~ ~ 1 0.01
playsound minecraft:block.amethyst_block.resonate master @a ~ ~ ~ 1 0.1

return 1