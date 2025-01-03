local M = {}

function M.get()
    -- https://github.com/nvim-lualine/lualine.nvim
    theme = vim.g.colors_name
    local colors = require("basoa.palette").palette(theme)

    local highlights = {}

    highlights.normal = {
        a = { bg = colors.color04, fg = colors.bg },
        b = { bg = colors.color15, fg = colors.color04 },
        c = { bg = colors.bg, fg = colors.color04 },
    }

    highlights.insert = {
        a = { bg = colors.active, fg = colors.bg },
        b = { bg = colors.color15, fg = colors.active },
        c = { bg = colors.bg, fg = colors.active },
    }

    highlights.command = {
        a = { bg = colors.border, fg = colors.bg },
        b = { bg = colors.color15, fg = colors.border },
        c = { bg = colors.bg, fg = colors.border },
    }

    highlights.visual = {
        a = { bg = colors.hyper, fg = colors.bg },
        b = { bg = colors.color15, fg = colors.hyper },
        c = { bg = colors.bg, fg = colors.hyper },
    }

    highlights.replace = {
        a = { bg = colors.spotlight, fg = colors.bg },
        b = { bg = colors.color15, fg = colors.spotlight },
        c = { bg = colors.bg, fg = colors.spotlight },
    }

    highlights.terminal = {
        a = { bg = colors.border, fg = colors.bg },
        b = { bg = colors.color15, fg = colors.border },
        c = { bg = colors.bg, fg = colors.border },
    }

    highlights.inactive = {
        a = { bg = colors.bg, fg = colors.color04 },
        b = { bg = colors.bg, fg = colors.color15 },
        c = { bg = colors.bg, fg = colors.color15 },
    }

    for _, mode in pairs(highlights) do
        mode.a.gui = "bold"
    end
    return highlights
end

return M
