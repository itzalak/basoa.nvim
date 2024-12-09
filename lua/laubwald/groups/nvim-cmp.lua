local M = {}

function M.get(colors, opts)
    -- https://github.com/hrsh7th/nvim-cmp
    return {
        CmpDocumentation = { fg = colors.fg, bg = colors.bg },
        CmpDocumentationBorder = { fg = colors.border, bg = colors.faded },
        CmpItemAbbrDeprecated = { fg = colors.description, strikethrough = opts.strikethrough },
        CmpItemAbbrMatch = { fg = colors.hyper },
        CmpItemAbbrMatchFuzzy = { fg = colors.hyper },
        CmpItemKindDefault = { fg = colors.border },
        CmpItemKindFunction = { fg = colors.active },
        CmpItemKindMethod = { fg = colors.active },
        CmpItemKindConstructor = { fg = colors.hyper },
        CmpItemKindClass = { fg = colors.hyper },
        CmpItemKindEnum = { fg = colors.hyper },
        CmpItemKindEvent = { fg = colors.spotlight },
        CmpItemKindInterface = { fg = colors.hyper },
        CmpItemKindStruct = { fg = colors.spotlight },
        CmpItemKindVariable = { fg = colors.description },
        CmpItemKindField = { fg = colors.description },
        CmpItemKindProperty = { fg = colors.description },
        CmpItemKindEnumMember = { fg = colors.description },
        CmpItemKindConstant = { fg = colors.border },
        CmpItemKindKeyword = { fg = colors.border },
        CmpItemKindModule = { fg = colors.border },
        CmpItemKindValue = { fg = colors.description },
        CmpItemKindUnit = { fg = colors.description },
        CmpItemKindText = { fg = colors.description },
        CmpItemKindSnippet = { fg = colors.hyper },
        CmpItemKindFile = { fg = colors.spotlight },
        CmpItemKindFolder = { fg = colors.spotlight },
        CmpItemKindColor = { fg = colors.fg },
        CmpItemKindReference = { fg = colors.fg },
        CmpItemKindOperator = { fg = colors.fg },
        CmpItemKindTypeParameter = { fg = colors.description },
        CmpItemMenu = { fg = colors.faded },
    }
end

return M
