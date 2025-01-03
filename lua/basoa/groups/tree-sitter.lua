local M = {}

function M.get(colors, opts)
    -- https://github.com/nvim-treesitter/nvim-treesitter
    -- https://neovim.io/doc/user/treesitter.html
    return {

        ["@annotation"] = { link = "PreProc" },
        ["@attribute"] = { link = "PreProc" },
        ["@none"] = { bg = colors.none, fg = colors.none },
        ["@preproc"] = { link = "PreProc" },

        ["@comment"] = { link = "Comment" },
        ["@comment.todo"] = { link = "Todo" },
        ["@comment.note"] = { link = "SpecialComment" },
        ["@comment.warning"] = { link = "WarningMsg" },
        ["@comment.error"] = { link = "ErrorMsg" },

        ["@markup.strong"] = { bold = opts.bold },
        ["@markup.emphasis"] = { italic = opts.italics },
        ["@markup.underline"] = { underline = opts.underline },
        ["@markup.strike"] = { strikethrough = opts.strikethrough },
        ["@markup.environment"] = { link = "Macro" },
        ["@markup.environment.name"] = { link = "Type" },
        ["@markup.raw"] = { link = "String" },
        ["@markup.heading"] = { link = "Title" },
        ["@markup.list"] = { link = "Delimiter" }, -- special punctuation that does not fall in the categories before
        ["@markup.list.checked"] = { link = "Macro" }, -- checked todo-style list markers, like square brackets
        ["@markup.list.unchecked"] = { fg = colors.hyper }, -- unchecked todo-style list markers
        ["@markup.link"] = { link = "Underlined" },
        ["@markup.link.label"] = { link = "SpecialChar" },
        ["@markup.link.label.symbol"] = { link = "SpecialChar" },
        ["@markup.link.label.markdown_inline"] = { link = "SpecialChar" },
        ["@markup.math"] = { link = "Special" },
        ["@markup.quote"] = { link = "Title" },
        ["@markup.heading.1.markdown"] = { link = "Title" },
        ["@markup.heading.2.markdown"] = { fg = colors.border },
        ["@markup.heading.3.markdown"] = { fg = colors.color07 },
        ["@markup.heading.4.markdown"] = { fg = colors.color07 },
        ["@markup.heading.5.markdown"] = { fg = colors.color07 },
        ["@markup.heading.6.markdown"] = { fg = colors.color07 },

        ["@keyword"] = { link = "Keyword" },
        ["@keyword.conditional"] = { link = "Conditional" },
        ["@keyword.debug"] = { link = "Debug" },
        ["@keyword.directive"] = { link = "PreProc" },
        ["@keyword.directive.define"] = { link = "Define" },
        ["@keyword.exception"] = { link = "Exception" },
        ["@keyword.function"] = { link = "Keyword" },
        ["@keyword.import"] = { link = "Include" },
        ["@keyword.operator"] = { fg = colors.spotlight },
        ["@keyword.repeat"] = { link = "Repeat" },
        ["@keyword.return"] = { link = "Keyword" },
        ["@keyword.storage"] = { link = "StorageClass" },
        ["@keyword.modifier"] = { fg = colors.hyper },
        ["@keyword.type"] = { fg = colors.hyper },
        ["@exception"] = { link = "Exception" },
        ["@type"] = { link = "Type" },
        ["@type.builtin"] = { fg = colors.hyper },
        ["@type.definition"] = { link = "Typedef" },
        ["@punctuation.delimiter"] = { link = "Delimiter" },
        ["@punctuation.bracket"] = { link = "Delimiter" },
        ["@punctuation.special"] = { link = "Delimiter" },
        ["@string"] = { link = "String" },
        ["@string.regex"] = { link = "Operator" },
        ["@string.regexp"] = { link = "Operator" },
        ["@string.escape"] = { link = "SpecialChar" },
        ["@string.special"] = { link = "SpecialChar" },
        ["@string.special.path"] = { link = "Underlined" },
        ["@string.special.symbol"] = { link = "Operator" },
        ["@string.special.url"] = { link = "Underlined" },
        ["@string.documentation"] = { link = "Comment" },
        ["@character"] = { link = "Character" },
        ["@character.special"] = { link = "SpecialChar" },
        ["@boolean"] = { link = "Boolean" },
        ["@number"] = { link = "Number" },
        ["@number.float"] = { link = "Float" },
        ["@float"] = { link = "Float" },
        ["@function"] = { link = "Function" },
        ["@function.builtin"] = { link = "Special" },
        ["@function.call"] = { link = "Function" },
        ["@function.macro"] = { link = "Macro" },
        ["@function.method"] = { link = "Function" },
        ["@include"] = { link = "Include" },
        ["@type.qualifier"] = { link = "Type" },
        ["@storageclass"] = { link = "StorageClass" },
        ["@field"] = { link = "Identifier" },
        ["@property"] = { link = "Identifier" },
        ["@variable"] = { fg = colors.fg },
        ["@operator"] = { link = "Operator" },
        ["@method"] = { link = "Function" },
        ["@method.call"] = { link = "Function" },
        ["@constructor"] = { link = "Special" },
        ["@parameter"] = { fg = colors.spotlight },
        ["@conditional"] = { link = "Conditional" },
        ["@repeat"] = { link = "Repeat" },
        ["@debug"] = { link = "Debug" },
        ["@label"] = { link = "Label" },
        ["@variable.builtin"] = { link = "Special" },
        ["@variable.member"] = { link = "Identifier" },
        ["@variable.parameter"] = { link = "Identifier" },
        ["@constant"] = { link = "Constant" },
        ["@constant.builtin"] = { link = "Special" },
        ["@constant.macro"] = { link = "Define" },
        ["@diff.plus"] = { link = "SignAdd" },
        ["@diff.minus"] = { link = "SignDelete" },
        ["@diff.delta"] = { link = "SignChange" },
        ["@module"] = { fg = colors.fg },
        ["@namespace"] = { fg = colors.fg },
        ["@symbol"] = { link = "Identifier" },
        ["@text"] = { fg = colors.fg },
        ["@text.strong"] = { bold = opts.bold },
        ["@text.emphasis"] = { italic = opts.italics },
        ["@text.underline"] = { underline = opts.underline },
        ["@text.strike"] = { strikethrough = opts.strikethrough },
        ["@text.title"] = { link = "Title" },
        ["@text.literal"] = { link = "String" },
        ["@text.uri"] = { link = "Underlined" },
        ["@text.math"] = { link = "Special" },
        ["@text.environment"] = { link = "Macro" },
        ["@text.environment.name"] = { link = "Type" },
        ["@text.reference"] = { link = "Constant" },
        ["@text.todo"] = { link = "Todo" },
        ["@text.todo.checked"] = { fg = colors.border },
        ["@text.todo.unchecked"] = { fg = colors.border },
        ["@text.note"] = { link = "SpecialComment" },
        ["@text.note.comment"] = { fg = colors.hyper, bold = opts.bold },
        ["@text.warning"] = { link = "WarningMsg" },
        ["@text.danger"] = { link = "ErrorMsg" },
        ["@text.danger.comment"] = { fg = colors.fg, bg = colors.spotlight, bold = opts.bold },
        ["@text.diff.add"] = { link = "SignAdd" },
        ["@text.diff.delete"] = { link = "SignDelete" },
        ["@tag"] = { link = "Tag" },
        ["@tag.attribute"] = { link = "Identifier" },
        ["@tag.delimiter"] = { link = "Delimiter" },
        ["@punctuation"] = { link = "Delimiter" },
        ["@macro"] = { link = "Macro" },
        ["@structure"] = { link = "Structure" },
        ["@lsp.type.class"] = { link = "@type" },
        ["@lsp.type.comment"] = { link = "@comment" },
        ["@lsp.type.decorator"] = { link = "@macro" },
        ["@lsp.type.enum"] = { link = "@type" },
        ["@lsp.type.enumMember"] = { link = "@constant" },
        ["@lsp.type.function"] = { link = "@function" },
        ["@lsp.type.interface"] = { link = "@constructor" },
        ["@lsp.type.macro"] = { link = "@macro" },
        ["@lsp.type.method"] = { link = "@method" },
        ["@lsp.type.namespace"] = { link = "@namespace" },
        ["@lsp.type.parameter"] = { link = "@parameter" },
        ["@lsp.type.property"] = { link = "@property" },
        ["@lsp.type.struct"] = { link = "@type" },
        ["@lsp.type.type"] = { link = "@type" },
        ["@lsp.type.typeParameter"] = { link = "@type.definition" },
        ["@lsp.type.field"] = { link = "@variable.member" },
        ["@lsp.type.variable"] = { link = "@variable" },
        TreesitterContext = { bg = colors.bg },
    }
end

return M