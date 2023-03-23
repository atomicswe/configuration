-- local status, _ = pcall(vim.cmd, "colorscheme nightfly")
--
-- if not status then
--     print("Colorscheme not found")
--     return
-- end

-- local status, github_theme = pcall(require, "github-theme")
--
-- if not status then
-- 	print("Colorscheme not found")
-- 	return
-- end
--
-- github_theme.setup({
-- 	theme_style = "dark_default",
-- })

function ColorMyPencils(color)
	color = color or "rose-pine"
	vim.cmd.colorscheme(color)

	vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
	vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
end

ColorMyPencils()
