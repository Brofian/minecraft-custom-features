# delay the deletion by one tick
execute if entity @s[tag=ray_remove] run kill @s
tag @s add ray_remove