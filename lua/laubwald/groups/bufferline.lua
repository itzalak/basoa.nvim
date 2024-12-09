local M = {}

function M.get(colors, opts)
    -- https://github.com/akinsho/bufferline.nvim
    return {
        BufferLineIndicatorSelected = { fg = colors.active },
    }
end

return M
