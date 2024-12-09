local M = {}

function M.get(colors, opts)
    -- https://github.com/MagicDuck/grug-far.nvim
    return {
        GrugFarHelpHeader = { fg = colors.description },
        GrugFarHelpHeaderKey = { fg = colors.description },
        GrugFarInputLabel = { fg = colors.description },
        GrugFarInputPlaceholder = { fg = colors.fg },
        GrugFarResultsChangeIndicator = { fg = colors.active },
        GrugFarResultsHeader = { fg = colors.spotlight },
        GrugFarResultsLineColumn = { fg = colors.faded },
        GrugFarResultsLineNo = { fg = colors.faded },
        GrugFarResultsMatch = { fg = colors.active, bg = colors.faded },
        GrugFarResultsStats = { fg = colors.hyper },
        GrugFarResultsNumberLabel = { fg = colors.hyper },
    }
end

return M
