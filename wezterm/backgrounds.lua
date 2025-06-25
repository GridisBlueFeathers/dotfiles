local NAME = "backgrounds"
local M = {}

M.pathes = {
	"../backgrounds/jack_frost.jpg",
	"../backgrounds/samurai.jpg",
	"../backgrounds/tzeentch.jpg",
	"../backgrounds/we_do_what_we_must.jpg",
}

function M.getBackground()
	return (M.pathes[math.random(#M.pathes)])
end

function M.overrideBackground(window, pane, line)
	local overrides = window:get_config_overrides() or {}
	overrides.background = {
		{
			source = {
				File = M.getBackground(),
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
