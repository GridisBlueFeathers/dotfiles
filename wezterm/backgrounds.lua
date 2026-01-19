local NAME = "backgrounds"
local M = {}

local wezterm = require "wezterm"

M.background = {
	{
		source = {
			File = wezterm.config_dir .. "/backgrounds/jack_frost.jpg",
		},
		horizontal_align = "Center",
		hsb = {
			brightness = 0.1
		}
	},
}

M.pathes = {
	"/backgrounds/jack_frost.jpg",
	"/backgrounds/samurai.jpg",
	"/backgrounds/tzeentch.jpg",
	"/backgrounds/we_do_what_we_must.jpg",
}

function M.getBackground()
	return (M.pathes[math.random(#M.pathes)])
end

function M.bgOverride(window, pane, line)
	local overrides = window:get_config_overrides() or {}
	overrides.background = {
		{
			source = {
				File = wezterm.config_dir .. backgrounds.getBackground(),
			},
			horizontal_align = "Center",
			hsb = {
				brightness = 0.1
			}
		},
	}
	window:set_config_overrides(overrides)
end

return M
