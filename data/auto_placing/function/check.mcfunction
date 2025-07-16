tag @s add cf_checked

execute if entity @s[nbt= \
	{Item:{components:{"minecraft:custom_data":{"auto_place_pot":1b}}}} \
] run function auto_placing:place
