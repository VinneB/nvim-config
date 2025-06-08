-- plugins/telescope.lua:
return {
	{
		'nvim-telescope/telescope.nvim',
		tag = '0.1.8',
		dependencies = { 
			'nvim-lua/plenary.nvim',
			{ 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
		},
		config = function()
			require('telescope').setup {
				extensions = {
					fzf = {}
				}
			}
			require('telescope').load_extension('fzf')

			vim.keymap.set("n", "<space>ff", require('telescope.builtin').find_files)
			-- require('telescope.builtin').find_files { cwd = '/this/is/a/path' } -- in order to fuzzy find in a specific directory
			vim.keymap.set("n", "<space>fh", require('telescope.builtin').help_tags)
		end

	}

}
