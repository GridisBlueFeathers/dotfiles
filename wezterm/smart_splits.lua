local NAME = "smart_splits"
local M = {}

function M.is_vim(pane)
	return pane:get_user_vars().IS_NVIM == 'true'
end

M.direction_keys = {
	h = "Left",
	j = "Down",
	k = "Up",
	l = "Right",
}

function M.split_nav(resize_or_move, key, wezterm)
  return {
    key = key,
    mods = resize_or_move == 'resize' and 'META' or 'CTRL',
    action = wezterm.action_callback(function(win, pane)
		if resize_or_move == 'resize' then
		  win:perform_action({ AdjustPaneSize = { M.direction_keys[key], 3 } }, pane)
		else
		  win:perform_action({ ActivatePaneDirection = M.direction_keys[key] }, pane)
		end
    end),
  }
end

function M.leader_nav(key, wezterm)
  return {
    key = key,
    mods = "LEADER",
    action = wezterm.action_callback(function(win, pane)
		win:perform_action({ ActivatePaneDirection = M.direction_keys[key] }, pane)
    end),
  }
end

return M
