hl.config({
    general = {
        gaps_in = 3, gaps_out = 16,
        border_size = 2,
        col = {
            active_border = {colors = {"rgba(cba6f7ff)", "rgba(62a0eaff)"}, angle = 0},
            inactive_border = "rgba(9a9996ff)",
        },
        resize_on_border = true, -- resizing windows by clicking and dragging
        layout = "dwindle",
    },
    decoration = {
        rounding = 5,
        active_opacity   = 1.0,
        inactive_opacity = 0.8,
        blur = { enabled = true, size = 6, passes = 2, vibrancy = 0.9 },
        shadow = { enabled = true, range = 5, render_power = 3, color = "rgba(5e5c64ff)" },
    },
    animations = {
        enabled = true,
    },
})
