-- return {
--   n = {
--     -- buffer
--     ["gt"] = { "<cmd>BufferLineCycleNext<cr>", desc = "Buffer Next" },
--     ["gT"] = { "<cmd>BufferLineCyclePrev<cr>", desc = "Buffer Previous" },
--   },

--   -- i = {
--   --   -- type template string
--   --   -- [";mk"] = { "<++>", desc = "Insert template string" },
--   --   -- ["<S-Tab>"] = { "<C-V><Tab>", desc = "Tab character" },
--   -- },
--   -- v = {
--   --   -- navigating wrapped lines
--   --   -- j = { "gj", desc = "Navigate down" },
--   --   -- k = { "gk", desc = "Navigate down" },
--   -- },
--   -- -- terminal mappings
--   -- t = {
--   --   -- ["<c-q>"] = { "<c-\\><c-n>", desc = "Terminal normal mode" },
--   --   -- ["<esc><esc>"] = { "<c-\\><c-n>:q<cr>", desc = "Terminal quit" },
--   -- },
--   -- x = {
--   --   -- better increment/decrement
--   --   -- ["+"] = { "g<c-a>", desc = "Increment number" },
--   --   -- ["-"] = { "g<c-x>", desc = "Descrement number" },
--   --   -- -- line text-objects
--   --   -- ["il"] = { "g_o^", desc = "Inside line text object" },
--   --   -- ["al"] = { "$o^", desc = "Around line text object" },
--   --   -- -- Tressitter Surfer
--   --   -- ["J"] = { "<cmd>STSSelectNextSiblingNode<cr>", desc = "Surf next tree-sitter object" },
--   --   -- ["K"] = { "<cmd>STSSelectPrevSiblingNode<cr>", desc = "Surf previous tree-sitter object" },
--   --   -- ["H"] = { "<cmd>STSSelectParentNode<cr>", desc = "Surf parent tree-sitter object" },
--   --   -- ["L"] = { "<cmd>STSSelectChildNode<cr>", desc = "Surf child tree-sitter object" },
--   --   -- ["<c-j>"] = { "<cmd>STSSwapNextVisual<cr>", desc = "Surf next tree-sitter object" },
--   --   -- ["<c-l>"] = { "<cmd>STSSwapNextVisual<cr>", desc = "Surf next tree-sitter object" },
--   --   -- ["<c-k>"] = { "<cmd>STSSwapPrevVisual<cr>", desc = "Surf previous tree-sitter object" },
--   --   -- ["<c-h>"] = { "<cmd>STSSwapPrevVisual<cr>", desc = "Surf previous tree-sitter object" },
--   -- },
--   -- o = {
--   --   -- line text-objects
--   --   -- ["il"] = { ":normal vil<cr>", desc = "Inside line text object" },
--   --   -- ["al"] = { ":normal val<cr>", desc = "Around line text object" },
--   -- },
--   -- [""] = {
--   --   -- ["<c-e><c-e>"] = { "<Plug>SendLine", desc = "Send line to REPL" },
--   --   -- ["<c-e>"] = { "<Plug>Send", desc = "Send to REPL" },
--   -- },
-- }
return{
      n = {
    -- lsp diagnostic
    -- ["g]"] = { function() vim.diagnostic.goto_prev end, desc = "diagnostic Previous " },
    -- ["g["] = { function() vim.diagnostic.goto_next end, desc = "diagnostic Next" },
    ["g]"] ={ function() vim.diagnostic.goto_next() end, desc = "Toggle syntax highlight" },
    ["g["] ={ function() vim.diagnostic.goto_prev() end, desc = "Toggle syntax highlight" },
  },
--   maps.n["<leader>uy"] = { function() astronvim.ui.toggle_syntax() end, desc = "Toggle syntax highlight" }

}
