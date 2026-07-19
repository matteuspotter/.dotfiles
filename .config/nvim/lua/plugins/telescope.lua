return 
{
	{
		'nvim-telescope/telescope.nvim', version = '0.2.1',
		dependencies = 
		{
			'nvim-lua/plenary.nvim',
			-- optional but recommended
			{ 
				'nvim-telescope/telescope-fzf-native.nvim', build = 'make' 
			},
		}
	},
	{
	local builtin = require('telescope.builtin')
	vim.keymap.set('n', '<leader>pf', builtin.find_files, {})
	vim.keymap.set('n', '<C-p>', builtin.git_files, {})
	}
}
