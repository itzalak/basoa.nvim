local function merge(option)
    local base = require "laubwald.palette.base"
    return vim.tbl_deep_extend("force", base, option)
end

local function palette(theme)
    local colorscheme
    if theme == "winter" then
        colorscheme = require "laubwald.palette.winter"
    elseif theme == "autumn" then
        colorscheme = require "laubwald.palette.autumn"
    elseif theme == "summer" then
        colorscheme = require "laubwald.palette.summer"
    elseif theme == "spring" then
        colorscheme = require "laubwald.palette.spring"
    elseif theme == "night" then
        colorscheme = require "laubwald.palette.night"
    else
        colorscheme = require "laubwald.palette.spring"
    end
    return merge(colorscheme)
end

return { palette = palette }
