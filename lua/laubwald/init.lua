local highlights = require "laubwald.highlights"
--local config = require("laubwald.config")
local palette = require "laubwald.palette"

---@class Mondego
local Mondego = {}

--- main function
---@param theme string|nil
function Mondego.load(theme)
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
    --config.setup()

    colors = palette.palette(theme)
    highlights.set_terminal_colors(colors)
    highlights.set_highlights(colors)
end

return Mondego
