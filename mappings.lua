-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menust
    ["<leader>b"] = { name = "Buffers" },
    ["<leader>aa"] = { "ggVG", desc = "Select all in a file" },
    ["<enter>"] = { "o<esc>", desc = "Create new line by enter" },
    ["<leader>i"] = { "o<esc>", desc = "Create new line by enter" },
    ["<leader>I"] = { "O<esc>", desc = "Create new above line" },
    ["<leader>gs"] = { "<cmd>Neotree git_status<cr>", desc = "Show git status in explorer bar" },
    ["<C-Z>"] = { "<esc>ua" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
  },
  t = { -- Terminal
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
  i = {
    ["<C-S>"] = { "<esc>:w!<cr>a" },
    ["<C-Z>"] = { "<esc>ua" },
  },
  v = {},
}
