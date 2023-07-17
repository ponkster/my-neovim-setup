require'lspconfig'.clangd.setup{}

local server = require("lspconfig")['clangd']

server.setup({
  server = {
    on_attach = function(_, bufnr)
      -- Hover actions
      vim.keymap.set("n", "<C-space>", rt.hover_actions.hover_actions, { buffer = bufnr })
      -- Code action groups
      vim.keymap.set("n", "<Leader>a", rt.code_action_group.code_action_group, { buffer = bufnr })
    end,
  },
})



require('nvim-treesitter.configs').setup({
    -- ...
    nt_cpp_tools = {
        enable = true,
        preview = {
            quit = 'q', -- optional keymapping for quit preview
            accept = '<tab>' -- optional keymapping for accept preview
        },
        header_extension = 'h', -- optional
        source_extension = 'cxx', -- optional
        custom_define_class_function_commands = { -- optional
            TSCppImplWrite = {
                output_handle = require'nt-cpp-tools.output_handlers'.get_add_to_cpp()
            }
            --[[
            <your impl function custom command name> = {
                output_handle = function (str, context) 
                    -- string contains the class implementation
                    -- do whatever you want to do with it
                end
            }
            ]]
        }
    }
})
