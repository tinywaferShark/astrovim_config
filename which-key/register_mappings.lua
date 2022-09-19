return{
    n = {
        -- second key is the prefix, <leader> prefixes
        ["<leader>"] = {
          -- third key is the key to bring up next level and its displayed
          -- group name in which-key top level menu
          ["R"] = { name = "Replace",
                  f = { "<cmd>lua require('spectre').open_file_search()<CR>", "Replace File" },
                  p = { "<cmd>lua require('spectre').open()<CR>", "Replace Project" },
                  s = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search" },
                  g = { "<cmd>lua require('spectre').open_visual({select_word=true})<CR>", "Search" },
          },
          ["p"] = {
            name = "packer",
            s = { "<cmd> PackerStatus<CR>", "PackerStatus" },
            S = { "<cmd> PackerSync<CR>", "PackerSync" },
            u = { "<cmd> PackerUpdate<CR>", "PackerUpdate" },
            i = { "<cmd> PackerCompile<CR>", "PackerCompile" },
          },
        },
      },
}