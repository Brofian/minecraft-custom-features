# this function should be executed by the entity, whose view should be raytraced

execute at @s summon marker at @s \
    if function cflib:raytrace/init \
    at @s \
    if function cflib:raytrace/loop \
    run function cflib:raytrace/schedule

return 1