local winter = require "laubwald.palette.winter"
local spring = require "laubwald.palette.spring"
local autumn = require "laubwald.palette.autumn"
local summer = require "laubwald.palette.summer"

local function merge_colors(option)
    local base = require "laubwald.palette.base"
    return vim.tbl_deep_extend("force", base, option)
end

local function palette(theme)
    if theme == "winter" then
        return merge_colors(winter)
    elseif theme == "autumn" then
        return merge_colors(autumn)
    elseif theme == "summer" then
        return merge_colors(summer)
    else
        return merge_colors(spring)
    end
end

return { palette = palette }
