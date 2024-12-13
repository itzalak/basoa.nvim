local M = {}

function M.get(colors, opts)
    -- https://github.com/gbprod/yanky.nvim
    return {
        YankyPut = { link = "Search" },
        YankyYanked = { link = "IncSearch" },
    }
end

return M
