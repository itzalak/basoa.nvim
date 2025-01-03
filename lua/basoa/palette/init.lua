local function palette(theme)
    local colorscheme
    if theme == "autumn" then
        colorscheme = require "basoa.palette.autumn"
    elseif theme == "summer" then
        colorscheme = require "basoa.palette.summer"
    elseif theme == "spring" then
        colorscheme = require "basoa.palette.spring"
    elseif theme == "night" then
        colorscheme = require "basoa.palette.night"
    elseif theme == "morning" then
        colorscheme = require "basoa.palette.morning"
    else
        colorscheme = require "basoa.palette.spring"
    end
    return colorscheme
end

return { palette = palette }
