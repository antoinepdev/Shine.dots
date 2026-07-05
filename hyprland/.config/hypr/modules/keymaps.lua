local leaderKey = "ALT" -- Sets "Windows" key as main modifier

-- Window Managment
hl.bind(leaderKey .. " + q", hl.dsp.window.close())-- close current window
hl.bind(leaderKey .. " + h",  hl.dsp.focus({ direction = "left" })) -- focus left window
hl.bind(leaderKey .. " + l", hl.dsp.focus({ direction = "right" })) -- focus right window
hl.bind(leaderKey .. " + k",    hl.dsp.focus({ direction = "up" })) -- focus up window
hl.bind(leaderKey .. " + j",  hl.dsp.focus({ direction = "down" })) -- focus down window
hl.bind(leaderKey .. " + s",  hl.dsp.window.fullscreen({ mode = 'maximized'})) -- toggle maximized

-- Launch Apps
hl.bind('SUPER' .. " + q", hl.dsp.exec_cmd('kitty')) -- new terminal
hl.bind('f1', hl.dsp.exec_cmd('kitty --class btop btop')) -- process manager
hl.bind(leaderKey .. ' + g', hl.dsp.exec_cmd('kitty --class lazygit lazygit')) -- git manager
hl.bind(leaderKey .. " + b", hl.dsp.exec_cmd('kitty zen')) -- browser
hl.bind(leaderKey .. " + e", hl.dsp.exec_cmd('dolphin')) -- file manager

-- Workspace Managment
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(leaderKey .. " + " .. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(leaderKey .. "+ SHIFT + " .. key,     hl.dsp.window.move({ workspace = i }))
end

-- Close Hyprland
hl.bind(leaderKey .. " + x", hl.dsp.exec_cmd("command -v hyprshutdown >/dev/null 2>&1 && hyprshutdown || hyprctl dispatch 'hl.dsp.exit()'"))

-- Laptop multimedia keys for volume and LCD brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
