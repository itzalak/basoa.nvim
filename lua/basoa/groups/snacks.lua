local M = {}

function M.get(colors, opts)
    -- https://github.com/folke/snacks.nvim
    return {
        -- Dashboard
        SnacksDashboardHeader = { link = "FloatTitle" },
        SnacksDashboardDesc = { fg = colors.spotlight },
        SnacksDashboardIcon = { fg = colors.spotlight },
        SnacksDashboardFooter = { fg = colors.description },
        SnacksDashboardKey = { fg = colors.border },
        SnacksDashboardSpecial = { fg = colors.spotlight },
        SnacksDashboardDir = { fg = colors.warning },

        -- Notify
        SnacksNotifierDebug = { fg = colors.fg, bg = colors.bg },
        SnacksNotifierBorderDebug = { fg = colors.special, bg = colors.bg },
        SnacksNotifierIconDebug = { fg = colors.special, bg = colors.bg },
        SnacksNotifierTitleDebug = { fg = colors.special, bg = colors.bg },

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
