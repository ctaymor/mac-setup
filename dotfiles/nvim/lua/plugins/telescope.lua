-- Telescope provides file navigation tools that supposedly are super cool
return { 
	'nvim-telescope/telescope.nvim', tag = '0.1.8',
	dependencies = {
		-- Plenary is required. It offers a library of basic lua functions for nvim
		'nvim-lua/plenary.nvim',
		-- treesitter enables finder/preview
		'nvim-treesitter/nvim-treesitter',
		'nvim-tree/nvim-web-devicons',
		{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
	},
	-- TOFIX This does not appear to be working. When I checkhealth, I do not see fzf in the extensions list. Also, when I close and reopen vim, I get an error about fzf not existing. Something isn't building properly, I think.
	config = function ()
		require('telescope').setup({
			extensions = { 
				fzf = {
					fuzzy = true,
				}
			}
		})
		require('telescope').load_extension('fzf')
	end,
}
