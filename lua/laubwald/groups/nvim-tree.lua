local M = {}

function M.get(colors, opts)
    return {
        -- https://github.com/kyazdani42/nvim-tree.lua
        -- https://github.com/nvim-tree/nvim-tree.lua/blob/master/lua/nvim-tree/appearance/init.lua

        NvimTreeFolderIcon = { fg = colors.description },
        NvimTreeGitDeletedIcon = { fg = colors.spotlight },
        NvimTreeGitDirtyIcon = { fg = colors.color03 },
    }
end

return M
