vim.keymap.set("n", "<leader>b", 
	function() 
		local path = vim.fs.normalize(vim.fs.dirname(vim.fn.expand("%:p")))
		vim.cmd.GoBuild({ args = { path } })
	end)
vim.keymap.set("n", "<leader>t", vim.cmd.GoTest )
vim.keymap.set("n", "<leader>ie", vim.cmd.GoIfErr )
