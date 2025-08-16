require("config.lazy")

vim.api.nvim_command("set colorcolumn=80")
vim.api.nvim_command("set cursorline")
vim.api.nvim_command("syntax on")
vim.api.nvim_command("set number relativenumber")
vim.api.nvim_command("set noswapfile")
vim.api.nvim_command("set shiftwidth=4")
vim.api.nvim_command("set tabstop=4")
vim.api.nvim_command("set title")
vim.api.nvim_command("set titleold=st")
vim.api.nvim_command("set titlestring=nvim")

vim.cmd.colorscheme 'slate'

vim.api.nvim_create_autocmd('BufRead', {
	callback = function(opts)
		vim.api.nvim_create_autocmd('BufWinEnter', {
			once = true,
			buffer = opts.buf,
			callback = function()
			local ft = vim.bo[opts.buf].filetype
			local last_known_line = vim.api.nvim_buf_get_mark(opts.buf, '"')[1]
			if
				not (ft:match('commit') and ft:match('rebase'))
				and last_known_line > 1
				and last_known_line <= vim.api.nvim_buf_line_count(opts.buf)
				then
					vim.api.nvim_feedkeys([[g`"]], 'nx', false)
				end
			end,
		})
	end,
})
