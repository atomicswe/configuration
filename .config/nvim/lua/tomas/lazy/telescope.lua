return {
    "nvim-telescope/telescope.nvim",
    dependencies = {
        "nvim-lua/plenary.nvim"
    },
    config = function()
        require("telescope").setup({
            defaults = {
                vimgrep_arguments = {
                    'rg',
                    '--color=never',
                    '--no-heading',
                    '--line-number',
                    '--column'
                },
                path_display = { "truncate" }
            },
        })

        local builtin = require('telescope.builtin')

        local opts = { noremap = true, silent = true }

        vim.keymap.set('n', '<leader>pf', builtin.find_files, opts)
        vim.keymap.set('n', '<C-p>', builtin.git_files, opts)
        vim.keymap.set('n', '<leader>pws', builtin.live_grep, opts)
        vim.keymap.set('n', '<leader>ps', builtin.grep_string, opts)
        vim.keymap.set('n', '<leader>vh', builtin.help_tags, {})
    end
}

