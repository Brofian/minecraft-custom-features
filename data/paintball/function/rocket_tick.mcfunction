# todo: limit this code to a specific area

# plop all regularly started rockets (use a tag to limit the nbt check to the first time)
execute if entity @s[tag=!is_paintball,nbt={ShotAtAngle:0b}] at @s \
    if function paintball:plop_rocket \
    run return 1
tag @s add is_paintball


# initialize all new rockets
execute if entity @s[tag=!rocket_init] at @s run function paintball:rocket_init




