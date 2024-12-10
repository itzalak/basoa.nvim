local BaseHighlights = {}

function BaseHighlights.get(colors, opts)
    return {

        Normal = { fg = colors.fg, bg = colors.bg },
        NormalFloat = { link = "Normal" }, -- text in floating windows
        NormalNC = { link = "Normal" }, -- normal text in non-current windows
        NormalSB = { link = "Normal" }, -- normal text in sidebar
        Conceal = { fg = colors.faded }, -- placeholder characters substituted for concealed text

        Cursor = { fg = colors.bg, bg = colors.faded }, -- character under the cursor
        lCursor = { link = "Cursor" }, -- character under the cursor when language-mapping is used
        CursorIM = { link = "Cursor" },
        CursorLine = { link = "Cursor" }, -- column at the cursor when 'cursorcolumn' is set
        CursorColumn = { link = "Cursor" }, -- line at the cursor when 'cursorline' is set
        CursorLineNr = { fg = colors.faded, italic = opts.bold },

        DiffAdd = { fg = colors.faded, bg = colors.info }, -- Added line
        DiffChange = { fg = colors.faded, bg = colors.warning, italic = opts.underline }, -- Changed line
        DiffDelete = { fg = colors.faded, bg = colors.error }, -- Deleted line

        SignColumn = { fg = colors.info, bg = colors.bg },
        SignColumnSB = { link = "SignColumn" },
        LineNr = { fg = colors.faded },

        WinSeparator = { fg = colors.border, bg = colors.bg }, -- column separating vertically split windows
        VertSplit = { fg = colors.border, bg = colors.bg }, -- column separating vertically split windows

        Special = { fg = colors.active }, -- any special symbol
        Delimiter = { link = "Special" }, --  character that needs attention
        Comment = { fg = colors.faded, italic = opts.italics },
        SpecialComment = { fg = colors.color06, italic = opts.italics },

        PreProc = { fg = colors.color11 }, -- generic Preprocessor
        String = { fg = colors.description }, -- a string constant
        SpecialChar = { fg = colors.hyper },
        Underlined = { fg = colors.hyper, italic = opts.underline }, -- text that stands out, HTML links

        TabLine = { fg = colors.faded, bg = colors.bg }, -- tab pages line, not active tab page label
        TabLineFill = { fg = colors.faded, bg = colors.bg }, -- tab pages line, where there are no labels
        TabLineSel = { fg = colors.border, bg = colors.faded }, -- tab pages line, active tab page label

        -- StatusLine
        StatusLine = { fg = colors.faded, bg = colors.bg }, -- status line of current window
        StatusLineNC = { fg = colors.faded, bg = colors.bg },
        StatusLineSeparator = { fg = colors.border },
        StatusLineTerm = { link = "StatusLine" },
        StatusLineTermNC = { link = "StatusLineNC" },

        -- Diagnostics
        DiagnosticOk = { fg = colors.description },
        DiagnosticError = { fg = colors.error },
        DiagnosticWarn = { fg = colors.warning },
        DiagnosticInfo = { fg = colors.info },
        DiagnosticHint = { fg = colors.hint },
        DiagnosticUnnecessary = { fg = colors.faded },
        DiagnosticSignError = { link = "DiagnosticError" },
        DiagnosticSignWarning = { link = "DiagnosticWarn" },
        DiagnosticSignInformation = { link = "DiagnosticInfo" },
        DiagnosticSignInfo = { link = "DiagnosticInfo" },
        DiagnosticSignHint = { link = "DiagnosticHint" },
        DiagnosticUnderlineError = { sp = colors.error, undercurl = opts.undercurl },
        DiagnosticUnderlineWarn = { sp = colors.warning, undercurl = opts.undercurl },
        DiagnosticUnderlineInfo = { sp = colors.info, undercurl = opts.undercurl },
        DiagnosticUnderlineHint = { sp = colors.hint, undercurl = opts.undercurl },

        MsgArea = { fg = colors.fg, bg = colors.bg }, -- messages and cmdline
        ModeMsg = { fg = colors.description, bg = colors.bg }, -- showmode message (e.g. "INSERT")
        MoreMsg = { fg = colors.spotlight }, -- prompt
        MsgSeparator = { fg = colors.active, bg = colors.bg },

        SpellBad = { italic = opts.underline, undercurl = opts.undercurl },
        SpellCap = { fg = colors.color03, undercurl = opts.undercurl },
        SpellLocal = { fg = colors.color02, undercurl = opts.undercurl },
        SpellRare = { fg = colors.color05, italic = opts.italics, undercurl = opts.undercurl },

        Pmenu = { fg = colors.border, bg = colors.bg, sp = colors.none },
        PmenuSel = { fg = colors.bg, bg = colors.color04 },
        WildMenu = { fg = colors.fg, bg = colors.color04 },

        Folded = { fg = colors.color00, bg = colors.color00 },
        FoldColumn = { fg = colors.color00, bg = colors.color00 },
        Whitespace = { fg = colors.bg },

        ColorColumn = { bg = colors.bg },
        FloatBorder = { fg = colors.border, bg = colors.bg },
        FloatTitle = { fg = colors.border, bg = colors.bg },
        Visual = { bg = colors.color04 },
        VisualNOS = { bg = colors.color00 },
        WarningMsg = { fg = colors.warning, bg = colors.bg },
        QuickFixLine = { bg = colors.color04 },
        PmenuSbar = { bg = colors.color00 },
        PmenuThumb = { bg = colors.color08 },
        MatchWord = { italic = opts.underline },
        MatchParen = { fg = colors.color04, bg = colors.bg, italic = opts.underline },
        MatchWordCur = { italic = opts.underline },
        MatchParenCur = { italic = opts.underline },

        Directory = { fg = colors.color04 },
        SpecialKey = { fg = colors.color04, italic = opts.bold },
        Title = { fg = colors.border, italic = opts.bold },
        ErrorMsg = { fg = colors.error, bg = colors.bg, italic = opts.bold },
        Search = { fg = colors.color00, bg = colors.color04 },
        IncSearch = { fg = colors.color09, bg = colors.color00 },
        Substitute = { fg = colors.color00, bg = colors.color09 },
        Question = { fg = colors.color09 },
        EndOfBuffer = { fg = colors.bg },
        NonText = { fg = colors.bg },
        Variable = { fg = colors.color12 },
        Character = { fg = colors.color09 },
        Constant = { fg = colors.description },
        Number = { fg = colors.color10 },
        Boolean = { fg = colors.color04 },
        Float = { fg = colors.color10 },
        Identifier = { fg = colors.spotlight },
        Function = { fg = colors.color03 },
        Operator = { fg = colors.fg },
        Type = { fg = colors.color12 },
        StorageClass = { fg = colors.color04 },
        Structure = { fg = colors.color04 },
        Typedef = { fg = colors.color04 },
        Keyword = { fg = colors.color04 },
        Statement = { fg = colors.color05 },
        Conditional = { fg = colors.color04 },
        Repeat = { fg = colors.color05 },
        Label = { fg = colors.color05 },
        Exception = { fg = colors.color05 },
        Include = { fg = colors.color05 },
        Define = { fg = colors.color05 },
        Macro = { fg = colors.color05 },
        PreCondit = { fg = colors.color05 },
        Tag = { fg = colors.color04 },
        Debug = { fg = colors.color01 },
        Bold = { italic = opts.bold },
        Italic = { italic = opts.italics },
        Ignore = { fg = colors.color12, bg = colors.bg, italic = opts.bold },
        Todo = { fg = colors.color13, bg = colors.bg, italic = opts.bold },
        Error = { fg = colors.error, bg = colors.bg, italic = opts.bold },
    }
end

return BaseHighlights
