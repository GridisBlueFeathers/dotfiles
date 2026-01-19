local wezterm = require 'wezterm'
local remaps = require "remaps"
local backgrounds = require "backgrounds"
local config = wezterm.config_builder()

config.font = wezterm.font("UbuntuMono Nerd Font")
config.font_size = 14

config.background = backgrounds.background

config.leader = remaps.leader

config.keys = remaps.keys

config.show_new_tab_button_in_tab_bar = false

config.use_fancy_tab_bar = false

config.colors = {
	tab_bar = {
		background = "#04101A",
		active_tab = {
			bg_color = "#134F80",
			fg_color = "#FFF"
		},
		inactive_tab = {
			bg_color = "#0A2740",
			fg_color = "#999"
		}
	},
}

wezterm.on("update-right-status", function(window, pane)
	local date = wezterm.strftime " %H:%M "

	window:set_right_status(wezterm.format {
		{Foreground = {Color = "#AAA"}},
		{Background = {Color = "#04101A"}},
		{Text = date},
	})
end)

return config
