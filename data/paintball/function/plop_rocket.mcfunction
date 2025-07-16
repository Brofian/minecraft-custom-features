# say plop

# summon new item
summon item ~ ~ ~ {Glowing:1b,Invulnerable:1b,Item:{id:"minecraft:firework_rocket",count:1},Tags:["paintball_rocket_item"]}

# copy firework data to item
data modify entity @n[type=item] Item.components."minecraft:fireworks" \
	set from entity @e[distance=..1,type=firework_rocket,limit=1] FireworksItem.components."minecraft:fireworks"

# if the player is sneaking, convert the item to a mine
execute if entity @p[scores={paintball_sneak=1..}] \
        unless entity @e[distance=..2,type=firework_rocket,tag=paintball_mine] \
        as @n[tag=paintball_rocket_item] at @s \
        run function paintball:convert_rocketitem_mine

tag @n[tag=paintball_rocket_item] remove paintball_rocket_item

# kill firework_rockets
execute on passengers run kill @s
kill @s

return 1
