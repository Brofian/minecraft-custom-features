# dialog show @s custom_features:settings


data merge storage custom_features:settings {toggles:{save_template: \
    "function custom_features:settings/save {\
        toggle_autoplacing: $(toggle_autoplacing),\
        toggle_itemmagnet: $(toggle_itemmagnet),\
        toggle_paintball: $(toggle_paintball),\
        toggle_chronometer: $(toggle_chronometer),\
    }" \
}}

function custom_features:settings/dialog with storage custom_features:settings toggles