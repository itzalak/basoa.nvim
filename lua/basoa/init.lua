local groups = require "basoa.groups"
local config = require "basoa.config"
local palette = require "basoa.palette"

---@class Basoa
local Basoa = {}

--- main function
---@param theme string|nil
function Basoa.load(theme)
    if vim.version().minor < 8 then
        vim.notify "basoa.nvim: you must use neovim 0.8 or higher"
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
end

return Basoa
