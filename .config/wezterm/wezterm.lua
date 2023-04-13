local wezterm = require 'wezterm'
local config = {}

if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- binds
config.keys = {
  {
    key = 't',
    mods = 'CTRL',
    action = wezterm.action.SpawnTab 'CurrentPaneDomain',  
  },
  {
    key = 't',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.CloseCurrentTab { confirm = true },
  },
  {
    key = 'Tab',
    mods = 'CTRL',
    action = wezterm.action.ActivateTabRelative(1)
  },
  {
    key = 'Tab',
    mods = 'CTRL|SHIFT',
    action = wezterm.action.ActivateTabRelative(-1)
  }
}

-- config
config.color_scheme = 'Catppuccin Mocha'
config.font = wezterm.font 'FantasqueSansMono Nerd Font'
config.font_size = 10
config.hide_tab_bar_if_only_one_tab = true
config.window_frame = {
  font_size = 9
}
config.window_padding = {
  left = 8,
  right = 0,
  top = 0,
  bottom = 0
}

return config
