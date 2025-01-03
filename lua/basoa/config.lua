local Config = {}

---@class Basoa.Config
Config.defaults = {

    bold = true,
    italics = true,
    underline = true,
    strikethrough = true,
    undercurl = true,

    -- WIP:
    dim_inactive = true,
}

---@type Basoa.Config
Config.options = nil

---@param opts? Basoa.Config
function Config.setup(opts)
    Config.options = vim.tbl_deep_extend("force", Config.defaults, opts or {})
end

return Config
