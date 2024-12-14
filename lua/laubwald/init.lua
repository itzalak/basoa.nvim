local groups = require "laubwald.groups"
--local highlights = require "laubwald.highlights"
local config = require "laubwald.config"
local palette = require "laubwald.palette"

---@class Laubwald
local Laubwald = {}

--- main function
---@param theme string|nil
function Laubwald.load(theme)
    if vim.version().minor < 8 then
        vim.notify "laubwald.nvim: you must use neovim 0.8 or higher"
        return
    end

    -- reset colors
    if vim.g.colors_name then
        vim.cmd "hi clear"
    end

    -- enable syntax highlighting
    if vim.fn.exists "syntax_on" then
        vim.cmd "syntax reset"
    end

    vim.g.colors_name = theme
    vim.o.background = "dark"
    vim.o.termguicolors = true

    -- TODO: Set user defined options
    config.setup()

    local colors = palette.palette(theme)
    groups.set_terminal_colors(colors)
    groups.set_highlights(colors, config.options)
    -- TODO: DELETE
    --highlights.set_terminal_colors(colors)
    --highlights.set_highlights(colors, config.options)
end

return Laubwald
