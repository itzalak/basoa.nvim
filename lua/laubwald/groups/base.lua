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
        CursorLineNr = { fg = colors.faded, bold = opts.bold },

        DiffAdd = { fg = colors.faded, bg = colors.info }, -- Added line
        DiffChange = { fg = colors.faded, bg = colors.warning, bold = opts.bold }, -- Changed line
        DiffDelete = { fg = colors.faded, bg = colors.error }, -- Deleted line

        SignColumn = { fg = colors.info, bg = colors.bg },
        SignColumnSB = { link = "SignColumn" },
        LineNr = { fg = colors.faded },
        ColorColumn = { bg = colors.bg }, -- used for the columns set with 'colorcolumn'

        Special = { fg = colors.active }, -- any special symbol
        Delimiter = { link = "Special" }, --  character that needs attention
        Comment = { fg = colors.faded, italic = opts.italics },
        SpecialComment = { fg = colors.special, italic = opts.italics },
        PreProc = { fg = colors.color11 }, -- generic Preprocessor
        String = { fg = colors.fg }, -- a string constant
        SpecialChar = { fg = colors.hyper },
        Underlined = { fg = colors.hyper, underline = opts.underline }, -- text that stands out, HTML links
        TabLine = { fg = colors.faded, bg = colors.bg }, -- tab pages line, not active tab page label
        TabLineFill = { fg = colors.faded, bg = colors.bg }, -- tab pages line, where there are no labels
        TabLineSel = { fg = colors.border, bg = colors.faded }, -- tab pages line, active tab page label
        Visual = { bg = colors.description }, -- Visual mode selection
        VisualNOS = { bg = colors.description }, -- Visual mode selection when vim is "Not Owning the Selection".
        WinSeparator = { fg = colors.border, bg = colors.bg }, -- column separating vertically split windows
        VertSplit = { fg = colors.border, bg = colors.bg }, -- column separating vertically split windows
        Directory = { fg = colors.description }, -- directory names and other special listings
        SpecialKey = { fg = colors.description, bold = opts.bold }, -- text displayed differently from what it really is

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
        ErrorMsg = { fg = colors.error, bg = colors.bg, bold = opts.bold },
        WarningMsg = { fg = colors.warning, bg = colors.bg },
        MsgSeparator = { fg = colors.active, bg = colors.bg },
        MatchWord = { fg = colors.faded, italic = opts.italic },
        MatchParen = { fg = colors.description, bg = colors.bg, italic = opts.italic }, -- character under the cursor or before it, and its match
        MatchWordCur = { italic = opts.italic },
        MatchParenCur = { italic = opts.italic },

        SpellBad = { sp = colors.error, undercurl = opts.undercurl }, -- spelling not recognized by the spellchecker
        SpellCap = { sp = colors.warning, undercurl = opts.undercurl }, -- spelling should start with a capital
        SpellLocal = { fg = colors.info, undercurl = opts.undercurl }, -- spelling recognized from another region
        SpellRare = { link = "SpellLocal" }, -- rare spelling

        Pmenu = { fg = colors.border, bg = colors.bg, sp = colors.none }, -- normal popup menu
        PmenuMatch = { fg = colors.border, bg = colors.faded, sp = colors.none }, -- matched text in popup menu
        PmenuSel = { fg = colors.bg, bg = colors.description }, -- selected text in popup menu
        PmenuMatchSel = { bg = colors.faded }, -- matched text in selected item of popup menu
        PmenuSbar = { bg = colors.border }, -- scrollbar of the popup menu
        PmenuThumb = { link = "PmenuSbar" }, -- thumb of the scrollbar of the popup menu
        WildMenu = { fg = colors.fg, bg = colors.description }, -- current match in 'wildmenu' completion
        FloatBorder = { fg = colors.border, bg = colors.bg },
        FloatTitle = { link = "FloatBorder" },
        Folded = { fg = colors.description, bg = colors.bg }, -- line used for closed folds
        FoldColumn = { fg = colors.description, bg = colors.bg },
        Whitespace = { fg = colors.faded }, -- space, tabs, etc
        QuickFixLine = { bg = colors.description }, -- item in the quickfix window

        Title = { fg = colors.border, bold = opts.bold }, -- titles for output from ":set all", ":autocmd" etc.
        Search = { fg = colors.faded, bg = colors.description }, -- search pattern highlighting
        IncSearch = { fg = colors.spotlight, bg = colors.faded }, -- 'incsearch' highlighting
        Substitute = { fg = colors.faded, bg = colors.spotlight }, -- replacement text highlighting
        Question = { fg = colors.spotlight, bold = opts.bold }, -- prompt and yes/no questions
        EndOfBuffer = { fg = colors.faded }, -- filler lines (~) after the end of the buffer
        NonText = { link = "EndOfBuffer" },
        Variable = { fg = colors.description },
        Character = { fg = colors.border },
        Constant = { fg = colors.active },
        Number = { fg = colors.border },
        Boolean = { fg = colors.active },
        Float = { fg = colors.active },
        Identifier = { link = "Variable" }, -- any variable name
        Function = { fg = colors.hyper },
        Operator = { fg = colors.hyper }, -- "sizeof", "+", "*", etc.
        Type = { fg = colors.description }, -- int, long, char, etc.
        StorageClass = { fg = colors.description },
        Structure = { fg = colors.description },
        Typedef = { fg = colors.description },
        Keyword = { fg = colors.hyper },
        Statement = { fg = colors.hyper },
        Conditional = { fg = colors.hyper },
        Repeat = { fg = colors.hyper },
        Label = { fg = colors.hyper },
        Exception = { fg = colors.spotlight },
        Include = { fg = colors.hyper },
        Define = { fg = colors.hyper },
        Macro = { fg = colors.hyper },
        PreCondit = { fg = colors.hyper },
        Tag = { fg = colors.hyper },
        Debug = { fg = colors.border },
        Bold = { bold = opts.bold },
        Italic = { italic = opts.italics },
        Ignore = { fg = colors.faded, bg = colors.bg, bold = opts.bold },
        Todo = { fg = colors.border, bg = colors.bg, bold = opts.bold },
        Error = { fg = colors.error, bg = colors.bg, bold = opts.bold },
    }
end

return BaseHighlights
