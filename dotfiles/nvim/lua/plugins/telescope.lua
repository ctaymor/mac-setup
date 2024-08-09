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
	config = function ()
		require('telescope').setup({
			extensions = { 
				fzf = {
					fuzzy = true,
				}
			},
			pickers = {
				find_files = { -- this sets up find_files to include dotfiles but NOT .gitignore. A different command is needed for .gitignore
					find_command = { "rg", "--files", "--hidden" }
				}
			}
		})
		require('telescope').load_extension('fzf')
	end,
}
