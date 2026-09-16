local Split = require("nui.split")
local nvim_tree_api = require("nvim-tree.api")

-- 1. Create your NUI Split Pane
local sidebar_split = Split({
  relative = "editor",
  position = "left",
  size = 30,
})

-- 2. Mount the NUI window
sidebar_split:mount()

-- 3. Open nvim-tree replacing the current buffer of this newly active NUI window
-- nvim_tree_api.tree.open({ current_window = true })
