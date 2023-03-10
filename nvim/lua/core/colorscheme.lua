local status, _ = pcall(vim.cmd, "colorscheme gruvbox-material")
if status then
    vim.cmd([[
        let g:gruvbox_material_better_performance = 1
        let g:gruvbox_material_transparent_background = 1
        let g:gruvbox_material_dim_inactive_windows = 1
    ]])
    return    
    else
    print("Colorscheme not found!")
    return
end
