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
    }
end

return Highlights
