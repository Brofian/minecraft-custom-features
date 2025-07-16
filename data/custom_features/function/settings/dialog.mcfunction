$dialog show @s {\
    type:"multi_action", title:"Custom Features Settings", columns:1, \
    inputs: [\
        {type:"boolean", key:"toggle_autoplacing", initial:$(autoplacing), label:"   Auto-Placing                            "}, \
        {type:"boolean", key:"toggle_itemmagnet", initial:$(itemmagnet),   label:"   Item-Magnet                             "}, \
    ], \
    actions: [\
        {label:"Save Changes", action:{type:"dynamic/run_command", template:"$(save_template)"}}\
    ], \
    after_action: "close"\
}