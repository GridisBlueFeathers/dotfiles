require("telescope").setup({
	file_ignore_patterns = {
		"node%_modules/.*"
	}
})
local builtin = require("telescope.builtin")

vim.keymap.set('n', "<C-p>", builtin.git_files, {})
vim.keymap.set('n', "<leader>pf", builtin.find_files, {})
vim.keymap.set('n', "<leader>pg", builtin.live_grep, {})
