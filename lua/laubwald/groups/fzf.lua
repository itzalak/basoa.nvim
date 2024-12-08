local M = {}

function M.get(colors, opts)
    -- https://github.com/ibhagwan/fzf-lua
    return {
        FzfLuaNormal = { fg = colors.fg, bg = colors.bg },
        FzfLuaBorder = { fg = colors.border, bg = colors.bg },
        FzfLuaTitle = { fg = colors.border, bg = colors.bg },
        FzfLuaCursor = { link = "IncSearch" },
        FzfLuaFzfCursorLine = { bg = colors.info },
        FzfLuaFzfNormal = { fg = colors.fg },
        FzfLuaDirPart = { fg = colors.color08 },
        FzfLuaFilePart = { link = "FzfLuaFzfNormal" },
        FzfLuaFzfPointer = { fg = colors.error, bg = colors.bg },
        FzfLuaFzfPrompt = { fg = colors.error, bg = colors.bg },

        FzfLuaHeaderBind = { fg = colors.error },
        FzfLuaHeaderText = { fg = colors.hint },
    }
end

return M
