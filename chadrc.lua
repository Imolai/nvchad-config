---@type ChadrcConfig
local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "onedark",
  theme_toggle = { "onedark", "one_light" },
  statusline = {
    -- https://github.com/NvChad/NvChad/issues/1562
    -- modules arg here is the default table of modules
    overriden_modules = function(modules)
      modules[11] = " %l,%c "
    end,
  },

  hl_override = highlights.override,
  hl_add = highlights.add,
}

M.plugins = "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
