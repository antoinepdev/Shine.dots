 -- Fix some dragging issues with XWayland
  hl.window_rule({
    name  = "fix-xwayland-drags",
    match = {
        class      = "^$",
        title      = "^$",
        xwayland   = true,
        float      = true,
        fullscreen = false,
        pin        = false,
    },

    no_focus = true,
})

hl.window_rule({
    name = "float-btop",
    match = { class = "btop" },
    float = true, center = true, size = "1000 700",
})