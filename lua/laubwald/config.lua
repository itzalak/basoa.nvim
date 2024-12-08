local Config = {}

---@class Laubwald.Config
Config.defaults = {

    bold = true,
    italics = true,
    underline = true,
    strikethrough = true,
    undercurl = true,

    -- WIP:
    dim_inactive = true,
}

---@type Laubwald.Config
Config.options = nil

---@param opts? Laubwald.Config
function Config.setup(opts)
    Config.options = vim.tbl_deep_extend("force", Config.defaults, opts or {})
end

return Config
