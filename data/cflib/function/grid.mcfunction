execute at @p align xyz positioned ~0.5 ~0.5 ~0.5 \
    summon marker \
    run function cflib:grid/setup_grid

schedule function cflib:grid/remove_grid 1t append