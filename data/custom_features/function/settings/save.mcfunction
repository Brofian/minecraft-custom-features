tellraw @s [{"text":"Saving settings for CustomFeatures:", "bold":true, "color": "gold"}]


# update the value
$data merge storage custom_features:settings {toggles: {\
    autoplacing: $(toggle_autoplacing),\
    itemmagnet: $(toggle_itemmagnet)\
}}


# output the value
execute if data storage custom_features:settings {toggles:{autoplacing:1}} run \
    tellraw @s [{"text":" | Auto-Placing:     ", "color": "gold"}, {"text": "On", "color": "green"}]
execute if data storage custom_features:settings {toggles:{autoplacing:0}} run \
    tellraw @s [{"text":" | Auto-Placing:     ", "color": "gold"}, {"text": "Off", "color": "red"}]

execute if data storage custom_features:settings {toggles:{itemmagnet:1}} run \
    tellraw @s [{"text":" | Item-Magnet:      ", "color": "gold"}, {"text": "On", "color": "green"}]
execute if data storage custom_features:settings {toggles:{itemmagnet:0}} run \
    tellraw @s [{"text":" | Item-Magnet:      ", "color": "gold"}, {"text": "Off", "color": "red"}]