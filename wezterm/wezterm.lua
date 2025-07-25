local wezterm = require 'wezterm'
local smart_splits = require "smart_splits"
local backgrounds = require "backgrounds"
local config = wezterm.config_builder()

local bgOverride = function (window, pane, line)
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

config.font = wezterm.font("UbuntuMono Nerd Font")
config.font_size = 13

config.background = {
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

config.leader = {
	key = 's',
	mods = "CTRL",
	timeout_milliseconds = 1000,
}

config.keys = {
	{
		key = "F11",
		action = wezterm.action.ToggleFullScreen,
	},
	{
		key = 's',
		mods = "LEADER",
		action = wezterm.action.SplitHorizontal { domain = "CurrentPaneDomain" }
	},
	{
		key = 'v',
		mods = "LEADER",
		action = wezterm.action.SplitVertical { domain = "CurrentPaneDomain" }
	},
	{
		key = 'w',
		mods = "LEADER",
		action = wezterm.action.ShowTabNavigator
	},
	{
		key = 'x',
		mods = "LEADER",
		action = wezterm.action.Multiple {
			wezterm.action.CloseCurrentPane { confirm = true },
			wezterm.action_callback(bgOverride)
		}
	},
	{
		key = 'n',
		mods = "LEADER",
		action = wezterm.action.Multiple {
			wezterm.action.SpawnTab "CurrentPaneDomain",
			wezterm.action_callback(bgOverride)
		}
	},
	{
		key = 'r',
		mods = "LEADER",
		action = wezterm.action.PromptInputLine {
			description = wezterm.format {
				{ Text = "New workspace name: "}
			},
			action = wezterm.action_callback(function(window, pane, line)
				if line then
					window:active_tab():set_title(line)
				end
			end
			),
		},
	},
	smart_splits.split_nav('move', 'h', wezterm),
	smart_splits.leader_nav('h', wezterm),
	smart_splits.leader_nav('j', wezterm),
    smart_splits.leader_nav('k', wezterm),
    smart_splits.leader_nav('l', wezterm),
    smart_splits.split_nav('move', 'l', wezterm),
}

for i = 1, 8 do
	table.insert(config.keys, {
		key = tostring(i),
		mods = "LEADER",
		action = wezterm.action.ActivateTab(i - 1),
	})
end

return config
