local winter = require "laubwald.palette.winter"
local spring = require "laubwald.palette.spring"
local autumn = require "laubwald.palette.autumn"
local summer = require "laubwald.palette.summer"

local function palette(theme)
    if theme == "winter" then
        return winter
    elseif theme == "spring" then
        return spring
    elseif theme == "autumn" then
        return autumn
    elseif theme == "summer" then
        return summer
    else
        return spring
    end
end

return { palette = palette }
