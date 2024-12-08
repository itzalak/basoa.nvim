local Groups = {}

function Groups.set_highlights(colors, opts)
    local groups = require("laubwald.groups.base").get(colors, opts)

    Groups.plugins = {
        "highlights",
        "telescope",
        "which-key",
    }

    for _, plugin in ipairs(Groups.plugins) do
        local ext = require("laubwald.groups." .. plugin)
        groups = vim.tbl_deep_extend("force", groups, ext.get(colors, opts))
    end

    for highlight, parameters in pairs(groups) do
        vim.api.nvim_set_hl(0, highlight, parameters)
    end
end

function Groups.set_terminal_colors(colors)
    vim.g.terminal_color_0 = colors.color00
    vim.g.terminal_color_1 = colors.color01
    vim.g.terminal_color_2 = colors.color02
    vim.g.terminal_color_3 = colors.color03
    vim.g.terminal_color_4 = colors.color04
    vim.g.terminal_color_5 = colors.color05
    vim.g.terminal_color_6 = colors.color06
    vim.g.terminal_color_7 = colors.color07
    vim.g.terminal_color_8 = colors.color08
    vim.g.terminal_color_9 = colors.color09
    vim.g.terminal_color_10 = colors.color10
    vim.g.terminal_color_11 = colors.color11
    vim.g.terminal_color_12 = colors.color12
    vim.g.terminal_color_13 = colors.color13
    vim.g.terminal_color_14 = colors.color14
    vim.g.terminal_color_15 = colors.color15
    vim.g.terminal_color_background = colors.bg
    vim.g.terminal_color_foreground = colors.fg
end

return Groups
