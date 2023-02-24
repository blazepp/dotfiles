-- neovide configuration
if vim.g.neovide then
    -- display --
    	-- sets the font
    	vim.opt.guifont = { "JetbrainsMono Nerd Font", "h14" }
    	-- transparency
    	vim.g.transparency = 0.9
    	--floating blur amount
    	vim.g.neovide_floating_blur_amount_x = 2.0
    	vim.g.neovide_floating_blur_amount_y = 2.0
    	-- hide mouse while typing
    	vim.g.neovide_hide_mouse_when_typing = true
	-- set idle refresh rate
    	vim.g.neovide_refresh_rate_idle = 5
    -- cursor settings --
        -- cursor particles
	vim.g.neovide_cursor_vfx_mode = "ripple"
end


