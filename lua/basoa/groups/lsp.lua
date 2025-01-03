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
        LspDiagnosticsUnderlineError = { sp = colors.error, underline = opts.underline },
        LspDiagnosticsUnderlineWarning = { sp = colors.warning, underline = opts.underline },
        LspDiagnosticsUnderlineInformation = { sp = colors.info, underline = opts.underline },
        LspDiagnosticsUnderlineInfo = { sp = colors.info, underline = opts.underline },
        LspDiagnosticsUnderlineHint = { sp = colors.hint, underline = opts.underline },
        LspReferenceRead = { fg = colors.faded },
        LspReferenceText = { fg = colors.faded },
        LspReferenceWrite = { fg = colors.faded },
        LspCodeLens = { fg = colors.faded, italic = opts.italics },
        LspCodeLensSeparator = { fg = colors.faded, italic = opts.italics },
    }
end

return Highlights
