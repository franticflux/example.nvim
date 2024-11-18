local core = {}

function core.show_popup(lines)
	local buf = vim.api.nvim_create_buf(false, true) -- Create a scratch buffer
	-- Set the content of the popup
	--local lines = { "Hello, Neovim!", "This is a simple popup." }
	vim.api.nvim_buf_set_lines(buf, 0, -1, false, lines)

	-- Configure popup window options
	local opts = {
		relative = "editor",
		width = 30,
		height = 4,
		col = (vim.o.columns - 30) / 2,
		row = (vim.o.lines - 4) / 2,
		style = "minimal",
		border = "rounded",
	}

	-- Open the popup window
	vim.api.nvim_open_win(buf, true, opts)
end

return core
