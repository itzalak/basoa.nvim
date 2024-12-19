local function palette(theme)
    local colorscheme
    if theme == "autumn" then
        colorscheme = require "laubwald.palette.autumn"
    elseif theme == "summer" then
        colorscheme = require "laubwald.palette.summer"
    elseif theme == "spring" then
        colorscheme = require "laubwald.palette.spring"
    elseif theme == "night" then
        colorscheme = require "laubwald.palette.night"
    elseif theme == "morning" then
        colorscheme = require "laubwald.palette.morning"
    else
        colorscheme = require "laubwald.palette.spring"
    end
    return colorscheme
end

return { palette = palette }
