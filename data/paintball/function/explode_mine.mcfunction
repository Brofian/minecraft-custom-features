summon firework_rocket ~ ~ ~ {ShotAtAngle:1b, LifeTime:1, Tags: ["paintball_mine_rocket"]}

# copy item data to firework
data modify entity @n[type=firework_rocket,tag=paintball_mine_rocket] FireworksItem.components."minecraft:fireworks" \
	set from entity @s Item.components."minecraft:fireworks"

kill @n[distance=..1,type=block_display,tag=paintball_mine_display]
kill @s