local winter = require "laubwald.palette.winter"
local spring = require "laubwald.palette.spring"
local autumn = require "laubwald.palette.autumn"
local summer = require "laubwald.palette.summer"

local function merge(option)
    local base = require "laubwald.palette.base"
    return vim.tbl_deep_extend("force", base, option)
end

local function palette(theme)
    if theme == "winter" then
        return merge(winter)
    elseif theme == "autumn" then
        return merge(autumn)
    elseif theme == "summer" then
        return merge(summer)
    else
        return merge(spring)
    end
end

return { palette = palette }
