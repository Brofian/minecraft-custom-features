
# summon and armorstand and let it ride this rocket
summon minecraft:marker ~ ~ ~ {Tags:["rocket_trace"]}
ride @n[tag=rocket_trace] mount @s


# load the primary color into the scoreboard
execute store result score @s paintball run data get entity @s FireworksItem.components."minecraft:fireworks".explosions[0].colors[0]
# then copy it to the trace
scoreboard players operation @n[tag=rocket_trace] paintball = @s paintball


# mark this rocket as initialized
tag @s add rocket_init
