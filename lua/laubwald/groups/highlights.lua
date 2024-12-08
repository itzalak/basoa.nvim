---@class Highlights
local Highlights = {}

function Highlights.get(colors, opts)
    return {

        -- LSP
        LspDiagnosticsDefaultError = { fg = colors.error },
        LspDiagnosticsDefaultWarning = { fg = colors.warning },
        LspDiagnosticsDefaultInformation = { fg = colors.info },
        LspDiagnosticsDefaultInfo = { fg = colors.info },
        LspDiagnosticsDefaultHint = { fg = colors.hint },
        LspDiagnosticsVirtualTextError = { fg = colors.error },
        LspDiagnosticsVirtualTextWarning = { fg = colors.warning },
        LspDiagnosticsVirtualTextInformation = { fg = colors.info },
        LspDiagnosticsVirtualTextInfo = { fg = colors.info },
        LspDiagnosticsVirtualTextHint = { fg = colors.hint },
        LspDiagnosticsFloatingError = { fg = colors.error },
        LspDiagnosticsFloatingWarning = { fg = colors.warning },
        LspDiagnosticsFloatingInformation = { fg = colors.info },
        LspDiagnosticsFloatingInfo = { fg = colors.info },
        LspDiagnosticsFloatingHint = { fg = colors.hint },

        LspDiagnosticsSignError = { fg = colors.error },
        LspDiagnosticsSignWarning = { fg = colors.warning },
        LspDiagnosticsSignInformation = { fg = colors.info },
        LspDiagnosticsSignInfo = { fg = colors.info },
        LspDiagnosticsSignHint = { fg = colors.hint },
        LspDiagnosticsError = { fg = colors.error },
        LspDiagnosticsWarning = { fg = colors.warning },
        LspDiagnosticsInformation = { fg = colors.info },
        LspDiagnosticsInfo = { fg = colors.info },
        LspDiagnosticsHint = { fg = colors.hint },
        LspDiagnosticsUnderlineError = { italic = opts.underline, undercurl = opts.undercurl },
        LspDiagnosticsUnderlineWarning = { italic = opts.underline, undercurl = opts.undercurl },
        LspDiagnosticsUnderlineInformation = { italic = opts.underline, undercurl = opts.undercurl },
        LspDiagnosticsUnderlineInfo = { italic = opts.underline, undercurl = opts.undercurl },
        LspDiagnosticsUnderlineHint = { italic = opts.underline, undercurl = opts.undercurl },
        LspReferenceRead = { fg = colors.color08 },
        LspReferenceText = { fg = colors.color08 },
        LspReferenceWrite = { fg = colors.color08 },
        LspCodeLens = { fg = colors.color08, italic = opts.italics },
        LspCodeLensSeparator = { fg = colors.color08, italic = opts.italics },

        -- LspTrouble
        TroubleText = { fg = colors.fg },
        TroubleCount = { fg = colors.color05, bg = colors.bg },
        TroubleNormal = { fg = colors.fg, bg = colors.bg },

        -- Buffer
        BufferCurrent = { fg = colors.fg, bg = colors.bg },
        BufferCurrentIndex = { fg = colors.fg, bg = colors.bg },
        BufferCurrentMod = { fg = colors.color03, bg = colors.bg },
        BufferCurrentSign = { fg = colors.color04, bg = colors.bg },
        BufferCurrentTarget = { fg = colors.color01, bg = colors.bg, italic = opts.bold },
        BufferVisible = { fg = colors.fg, bg = colors.bg },
        BufferVisibleIndex = { fg = colors.fg, bg = colors.bg },
        BufferVisibleMod = { fg = colors.color03, bg = colors.bg },
        BufferVisibleSign = { fg = colors.color08, bg = colors.bg },
        BufferVisibleTarget = { fg = colors.color01, bg = colors.bg, italic = opts.bold },
        BufferInactive = { fg = colors.color08, bg = colors.color00 },
        BufferInactiveIndex = { fg = colors.color08, bg = colors.color00 },
        BufferInactiveMod = { fg = colors.color03, bg = colors.color00 },
        BufferInactiveSign = { fg = colors.color08, bg = colors.color00 },
        BufferInactiveTarget = { fg = colors.color01, bg = colors.color00, italic = opts.bold },

        -- StatusLine
        StatusLine = { fg = colors.color08, bg = colors.color00 },
        StatusLineNC = { fg = colors.color08, bg = colors.color00 },
        StatusLineSeparator = { fg = colors.color08 },
        StatusLineTerm = { fg = colors.color08 },
        StatusLineTermNC = { fg = colors.color08 },

        -- IndentBlankline
        IndentBlanklineContextChar = { fg = colors.color08 },
        IndentBlanklineContextStart = { italic = opts.underline },
        IndentBlanklineChar = { fg = colors.color00 },
        IndentBlanklineSpaceChar = { fg = colors.color12 },
        IndentBlanklineSpaceCharBlankline = { fg = colors.color03 },

        -- Cmp
        CmpItemAbbrDeprecated = { fg = colors.color08, italic = opts.strikethrough },
        CmpItemAbbrMatch = { fg = colors.color04 },
        CmpItemAbbrMatchFuzzy = { fg = colors.color04 },
        CmpItemKindFunction = { fg = colors.color04 },
        CmpItemKindMethod = { fg = colors.color04 },
        CmpItemKindConstructor = { fg = colors.color12 },
        CmpItemKindClass = { fg = colors.color12 },
        CmpItemKindEnum = { fg = colors.color12 },
        CmpItemKindEvent = { fg = colors.color03 },
        CmpItemKindInterface = { fg = colors.color12 },
        CmpItemKindStruct = { fg = colors.color12 },
        CmpItemKindVariable = { fg = colors.color01 },
        CmpItemKindField = { fg = colors.color01 },
        CmpItemKindProperty = { fg = colors.color01 },
        CmpItemKindEnumMember = { fg = colors.color09 },
        CmpItemKindConstant = { fg = colors.color09 },
        CmpItemKindKeyword = { fg = colors.color05 },
        CmpItemKindModule = { fg = colors.color12 },
        CmpItemKindValue = { fg = colors.fg },
        CmpItemKindUnit = { fg = colors.fg },
        CmpItemKindText = { fg = colors.fg },
        CmpItemKindSnippet = { fg = colors.color03 },
        CmpItemKindFile = { fg = colors.fg },
        CmpItemKindFolder = { fg = colors.fg },
        CmpItemKindColor = { fg = colors.fg },
        CmpItemKindReference = { fg = colors.fg },
        CmpItemKindOperator = { fg = colors.fg },
        CmpItemKindTypeParameter = { fg = colors.color01 },
    }
end

return Highlights
