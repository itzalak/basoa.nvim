local M = {}

function M.get(colors, opts)
    -- https://github.com/MeanderingProgrammer/render-markdown.nvim
    return {

        RenderMarkdownBullet = { fg = colors.description },
        RenderMarkdownDash = { fg = colors.description },
        RenderMarkdownCode = { bg = colors.color00 },
        RenderMarkdownTableRow = { fg = colors.special },
        RenderMarkdownH1Bg = { bg = colors.color00, fg = colors.info, bold = opts.bold },
        RenderMarkdownH2Bg = { bg = colors.color00, fg = colors.special, bold = opts.bold },
        RenderMarkdownH3Bg = { link = "RenderMarkdownH2Bg" },
        RenderMarkdownH4Bg = { link = "RenderMarkdownH2Bg" },
        RenderMarkdownH5Bg = { link = "RenderMarkdownH2Bg" },
        RenderMarkdownH6Bg = { link = "RenderMarkdownH2Bg" },
    }
end

return M
