local M = {}

function M.get(colors, opts)
    -- https://github.com/folke/flash.nvim
    return {
        FlashBackdrop = { fg = colors.faded },
        FlashLabel = { fg = colors.hyper, bg = colors.faded, bold = opts.bold },
    }
end

return M
