local M = {}

function M.get(colors, opts)
    -- "https://github.com/lewis6991/gitsigns.nvim"
    return {
        SignAdd = { fg = colors.info },
        GitSignsAdd = { fg = colors.info },
        SignChange = { fg = colors.warning },
        GitSignsChange = { fg = colors.warning },
        SignDelete = { fg = colors.error },
        GitSignsDelete = { fg = colors.error },
    }
end

return M
