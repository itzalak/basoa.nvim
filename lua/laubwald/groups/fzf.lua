local M = {}

function M.get(colors, opts)
    -- https://github.com/ibhagwan/fzf-lua
    -- https://github.com/ibhagwan/fzf-lua?tab=readme-ov-file#highlights
    return {
        FzfLuaNormal = { link = "Normal" },
        FzfLuaBorder = { link = "FloatBorder" },
        FzfLuaTitle = { fg = colors.border, bg = colors.bg },
        FzfLuaCursor = { link = "Cursor" },
        FzfLuaFzfCursorLine = { link = "Cursor" },
        FzfLuaFzfNormal = { link = "Normal" },
        FzfLuaDirPart = { fg = colors.faded },
        FzfLuaFilePart = { fg = colors.description },
        FzfLuaFzfPointer = { fg = colors.spotlight },
        FzfLuaFzfPrompt = { fg = colors.spotlight },

        FzfLuaHeaderBind = { fg = colors.spotlight },
        FzfLuaHeaderText = { fg = colors.hint },
    }
end

return M
