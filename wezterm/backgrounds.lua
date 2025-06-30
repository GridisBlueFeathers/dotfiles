local NAME = "backgrounds"
local M = {}

M.pathes = {
	"/backgrounds/jack_frost.jpg",
	"/backgrounds/samurai.jpg",
	"/backgrounds/tzeentch.jpg",
	"/backgrounds/we_do_what_we_must.jpg",
}

function M.getBackground()
	return (M.pathes[math.random(#M.pathes)])
end

return M
