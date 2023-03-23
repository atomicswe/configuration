-- -- import nvim-treesitter plugin safely
-- local status, treesitter = pcall(require, "nvim-treesitter.configs")
-- if not status then
-- 	return
-- end
--
-- -- configure treesitter
-- treesitter.setup({
-- 	-- enable syntax highlighting
-- 	highlight = {
-- 		enable = true,
-- 	},
-- 	-- enable indentation
-- 	indent = { enable = true },
-- 	-- enable autotagging (w/ nvim-ts-autotag plugin)
-- 	autotag = { enable = true },
-- 	-- ensure these language parsers are installed
-- 	ensure_installed = {
-- 		"json",
-- 		"javascript",
-- 		"html",
-- 		"css",
-- 		"markdown",
-- 		"bash",
-- 		"lua",
-- 		"vim",
-- 		"arduino",
-- 		"c",
-- 		"c_sharp",
-- 		"cpp",
-- 		"java",
-- 		"latex",
-- 		"python",
-- 		"rust",
-- 		"sql",
-- 		"go",
-- 	},
-- 	-- auto install above language parsers
-- 	auto_install = true,
-- })

require("nvim-treesitter.configs").setup({
	-- A list of parser names, or "all" (the five listed parsers should always be installed)
	ensure_installed = {
		"c",
		"lua",
		"vim",
		"help",
		"query",
		"java",
		"cpp",
		"python",
		"go",
		"bash",
		"javascript",
		"kotlin",
		"latex",
		"markdown",
		"ocaml",
		"rust",
	},

	-- Install parsers synchronously (only applied to `ensure_installed`)
	sync_install = false,

	-- Automatically install missing parsers when entering buffer
	-- Recommendation: set to false if you don't have `tree-sitter` CLI installed locally
	auto_install = true,

	---- If you need to change the installation directory of the parsers (see -> Advanced Setup)
	-- parser_install_dir = "/some/path/to/store/parsers", -- Remember to run vim.opt.runtimepath:append("/some/path/to/store/parsers")!

	highlight = {
		enable = true,

		-- Setting this to true will run `:h syntax` and tree-sitter at the same time.
		-- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
		-- Using this option may slow down your editor, and you may see some duplicate highlights.
		-- Instead of true it can also be a list of languages
		additional_vim_regex_highlighting = false,
	},
})
