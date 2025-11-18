-- this line for types, by hovering and autocompletion (lsp required)
-- will help you understanding properties, fields, and what highlightings the color used for
---@type Base46Table
local M = {}

-- UI
M.base_30 = {
    white = "#c1c1c1",
    black = "#000000",        -- usually your theme bg
    darker_black = "#000000", -- 6% darker than black
    black2 = "#0f0f0f",       -- 6% lighter than black
    one_bg = "#1a1a1a",       -- 10% lighter than black
    one_bg2 = "#242424",      -- 6% lighter than one_bg
    one_bg3 = "#2e2e2e",      -- 6% lighter than one_bg2
    grey = "#666666",         -- 40% lighter than black
    grey_fg = "#757575",      -- 10% lighter than grey
    grey_fg2 = "#7d7d7d",     -- 5% lighter than grey
    light_grey = "#999999",
    red = "#5f8787",
    baby_pink = "#8c7f70",
    pink = "#9b8d7f",
    line = "#262626", -- 15% lighter than black
    green = "#9b8d7f",
    vibrant_green = "#a39689",
    nord_blue = "#888888",
    blue = "#888888",
    seablue = "#5f8787",
    yellow = "#8c7f70",
    sun = "#968575",
    purple = "#999999",
    dark_purple = "#7d7d7d",
    teal = "#5f8787",
    orange = "#aaaaaa",
    cyan = "#aaaaaa",
    statusline_bg = "#121212",
    lightbg = "#222222",
    pmenu_bg = "#5f8787",
    folder_bg = "#888888"
}

-- check https://github.com/chriskempson/base16/blob/master/styling.md for more info
M.base_16 = {
    base00 = '#000000',
    base01 = '#121212',
    base02 = '#222222',
    base03 = '#333333',
    base04 = '#999999',
    base05 = '#c1c1c1',
    base06 = '#999999',
    base07 = '#c1c1c1',
    base08 = '#5f8787',
    base09 = '#aaaaaa',
    base0A = '#8c7f70',
    base0B = '#9b8d7f',
    base0C = '#aaaaaa',
    base0D = '#888888',
    base0E = '#999999',
    base0F = '#444444'
}

-- OPTIONAL
-- overriding or adding highlights for this specific theme only
-- defaults/treesitter is the filename i.e integration there,
M.polish_hl = {
    defaults = {
        Comment = {
            fg = "#999999",
            italic = true,
        },
    },
    treesitter = {
        ["@variable"] = { fg = "#c1c1c1" },
    },
}

-- set the theme type whether is dark or light
M.type = "dark" -- "or light"

-- this will be later used for users to override your theme table from chadrc
M = require("base46").override_theme(M, "gorgoroth")

return M
