$dialog show @s {\
    type:"multi_action", title:"Custom Features Settings", columns:1, \
    inputs: [\
        {type:"boolean", key:"toggle_autoplacing", initial:$(autoplacing), label:"   Auto-Placing                            "}, \
        {type:"boolean", key:"toggle_itemmagnet", initial:$(itemmagnet),   label:"   Item-Magnet                             "}, \
        {type:"boolean", key:"toggle_paintball", initial:$(paintball),     label:"   Paintball                                 "}, \
        {type:"boolean", key:"toggle_chronometer", initial:$(chronometer), label:"   Chronometer                           "}, \
        {type:"boolean", key:"toggle_vault_reloading", initial:$(vault_reloading), label:"   Vault Reloading                         "}, \
    ], \
    actions: [\
        {label:"Save Changes", action:{type:"dynamic/run_command", template:"$(save_template)"}}\
    ], \
    after_action: "close"\
}