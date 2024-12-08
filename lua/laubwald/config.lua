---@class Config
local Config = {}

--local defaults = {
Config.options = {

    bold = true,
    italics = true,
    underline = true,
    strikethrough = true,
    undercurl = true,
}
-- -- TODO: Get back to defaults and options
--function Config.setup(opts)
--  Config.options = vim.tbl_deep_extend("force", defaults, opts or {})
--end

return Config
