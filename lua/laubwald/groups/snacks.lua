local M = {}

function M.get(colors, opts)
    -- https://github.com/folke/snacks.nvim
    return {
        -- Dashboard
        SnacksDashboardHeader = { fg = colors.color02 },
        SnacksDashboardDesc = { fg = colors.color04 },
        SnacksDashboardIcon = { fg = colors.color04 },
        SnacksDashboardFooter = { fg = colors.color04 },
        SnacksDashboardKey = { fg = colors.color02 },
        SnacksDashboardSpecial = { fg = colors.color01 },
        SnacksDashboardDir = { fg = colors.color11 },

        -- Notify
        SnacksNotifierDebug = { fg = colors.fg, bg = colors.bg },
        SnacksNotifierBorderDebug = { fg = colors.color06, bg = colors.bg },
        SnacksNotifierIconDebug = { fg = colors.color06, bg = colors.bg },
        SnacksNotifierTitleDebug = { fg = colors.color06, bg = colors.bg },

        SnacksNotifierError = { fg = colors.fg, bg = colors.bg },
        SnacksNotifierBorderError = { fg = colors.error, bg = colors.bg },
        SnacksNotifierIconError = { fg = colors.error },
        SnacksNotifierTitleError = { fg = colors.error },

        SnacksNotifierInfo = { fg = colors.fg, bg = colors.bg },
        SnacksNotifierBorderInfo = { fg = colors.info, bg = colors.bg },
        SnacksNotifierIconInfo = { fg = colors.info },
        SnacksNotifierTitleInfo = { fg = colors.info },

        SnacksNotifierTrace = { fg = colors.fg, bg = colors.bg },
        SnacksNotifierBorderTrace = { fg = colors.hint, bg = colors.bg },
        SnacksNotifierIconTrace = { fg = colors.hint },
        SnacksNotifierTitleTrace = { fg = colors.hint },

        SnacksNotifierWarn = { fg = colors.fg, bg = colors.bg },
        SnacksNotifierBorderWarn = { fg = colors.warning, bg = colors.bg },
        SnacksNotifierIconWarn = { fg = colors.warning },
        SnacksNotifierTitleWarn = { fg = colors.warning },

        -- Profiler
        SnacksProfilerIconInfo = { fg = colors.info, bg = colors.bg },
        SnacksProfilerBadgeInfo = { fg = colors.info, bg = colors.bg },
        SnacksScratchKey = { fg = colors.info, bg = colors.bg },
        SnacksScratchDesc = { fg = colors.info, bg = colors.bg },
        SnacksProfilerIconTrace = { fg = colors.hint, bg = colors.bg },
        SnacksProfilerBadgeTrace = { fg = colors.hint, bg = colors.bg },
    }
end

return M
