-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

config.color_scheme = 'GitHub Dark'
config.font = wezterm.font 'CaskaydiaCove Nerd Font Mono'
config.font_size = 12.0

local wsl_domains = wezterm.default_wsl_domains()
config.wsl_domains = wsl_domains
config.default_domain = "WSL:Ubuntu"

-- and finally, return the configuration to wezterm
return config