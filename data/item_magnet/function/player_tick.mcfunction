# this function is executed once per tick for every player

tag @s[tag=has_item_magnet] remove has_item_magnet

execute if items entity @s weapon.mainhand minecraft:iron_ingot[minecraft:custom_data~{item_magnet:1b}] \
        run tag @s add has_item_magnet

execute unless entity @s[tag=has_item_magnet] \
        if items entity @s weapon.offhand minecraft:iron_ingot[minecraft:custom_data~{item_magnet:1b}] \
        run tag @s add has_item_magnet




execute if entity @s[tag=has_item_magnet] at @s run function item_magnet:attract_items
