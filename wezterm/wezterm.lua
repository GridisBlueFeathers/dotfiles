local wezterm = require 'wezterm'
local remaps = require "remaps"
local backgrounds = require "backgrounds"
local config = wezterm.config_builder()

config.font = wezterm.font("UbuntuMono Nerd Font")
config.font_size = 14

config.background = backgrounds.background

config.leader = remaps.leader

config.keys = remaps.keys

return config
