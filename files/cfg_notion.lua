META="Mod4+"
ALTMETA=""

dopath("mod_tiling")
dopath("mod_menu")
dopath("mod_query")

ioncore.deflayout("single-frame", {
    managed = {
        {
            type = "WTiling",
            bottom = true,
            split_tree = {
                type = "WSplitRegion",
                regparams = {
                    type = "WFrame",
                    frame_style = "frame-tiled",
                },
            },
        },
    },
})

defbindings("WScreen", {
    bdoc("Workspaces"),
    kpress(META.."Return", "ioncore.create_ws(_, nil, 'single-frame')"),
    kpress(META.."1", "_:switch_nth(0)"),
    kpress(META.."2", "_:switch_nth(1)"),
    kpress(META.."3", "_:switch_nth(2)"),
    kpress(META.."4", "_:switch_nth(3)"),
    kpress(META.."5", "_:switch_nth(4)"),
    kpress(META.."6", "_:switch_nth(5)"),
    kpress(META.."7", "_:switch_nth(6)"),
    kpress(META.."8", "_:switch_nth(7)"),
    kpress(META.."9", "_:switch_nth(8)"),
    kpress(META.."0", "_:switch_nth(9)"),
    kpress(META.."U", "_:switch_prev()"),
    kpress(META.."P", "_:switch_next()"),

    bdoc("Window focus"),
    kpress(META.."J", "ioncore.goto_next(_chld, 'left', {nowrap = true})",
        "_chld:non-nil"),
    kpress(META.."semicolon", "ioncore.goto_next(_chld, 'right', "..
        "{nowrap = true})", "_chld:non-nil"),

    bdoc("Menus"),
    kpress(META.."F12", "mod_query.query_menu(_, _sub, 'sessionmenu', "..
        "'Session menu:')"),
})

defbindings("WTiling", {
    kpress(META.."M", "_:split_at(_sub, 'bottom', true)"),
    kpress(META.."N", "_:split_at(_sub, 'right', true)"),
    kpress(META.."backslash", "_:unsplit_at(_sub)"),

    bdoc("Frame focus"),
    kpress(META.."J", "ioncore.goto_next(_sub, 'left', {nowrap = true})",
        "_chld:non-nil"),
    kpress(META.."K", "ioncore.goto_next(_sub, 'down', {nowrap = true})",
        "_chld:non-nil"),
    kpress(META.."L", "ioncore.goto_next(_sub, 'up', {nowrap = true})",
        "_chld:non-nil"),
    kpress(META.."semicolon", "ioncore.goto_next(_sub, 'right', "..
        "{nowrap = true})", "_chld:non-nil"),
})

defbindings("WClientWin", {
    kpress(META.."Shift+Q", "_:kill()"),
})

defbindings("WFrame", {
    mclick("Button1@tab", "WFrame.p_switch_tab(_)"),
    mdrag("Button1@tab", "_:p_tabdrag()"),
    mpress("Button3", "mod_menu.pmenu(_, _sub, 'ctxmenu')"),
    mdrag(META.."Button1", "_:p_move()"),
    mdrag(META.."Button3", "_:p_resize()"),

    kpress(META.."I", "_:switch_prev()"),
    kpress(META.."O", "_:switch_next()"),
})

defbindings("WMPlex", {
    kpress_wait(META.."Q", "WRegion.rqclose_propagate(_, _sub)"),
})

defbindings("WMPlex.toplevel", {
    kpress(META.."slash", "notioncore.exec_on(_, 'x-terminal-emulator')"),
    kpress(META.."space", "mod_query.query_exec(_)"),
})

defmenu("sessionmenu", {
    menuentry("Save",           "ioncore.snapshot()"),
    menuentry("Restart",        "ioncore.restart()"),
    menuentry("Restart TWM",    "ioncore.restart_other('twm')"),
    menuentry("Exit",           "ioncore.shutdown()"),
})
