# if we hit a block, return
execute unless block ~ ~ ~ #cflib:non_raytrace_hit_blocks if function cflib:raytrace/hit run return 1
execute if score @s cflib_general matches ..0 run return 1

# otherwise move further and recurse
tp @s ^ ^ ^0.1
scoreboard players remove @s cflib_general 1
execute at @s run function cflib:raytrace/loop

return 1