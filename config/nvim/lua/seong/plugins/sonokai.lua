return {
	{
		'sainnhe/sonokai',
		lazy = false,
		config = function()
			vim.g.sonokai_style = 'espresso'
			vim.cmd "colorscheme sonokai"
		end
	}
}
