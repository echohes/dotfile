local lspconfig = require('lspconfig')
local util = require('lspconfig/util')

local function config(_config)
    return vim.tbl_deep_extend('force', {
        capabilities = require('cmp_nvim_lsp').default_capabilities(vim.lsp.protocol.make_client_capabilities()),
    }, _config or {})
end

local on_attach = require('modules.lsp')

--golang
lspconfig.gopls.setup(config({
    on_attach = on_attach,
    cmd = { 'gopls', 'serve' },
    filetypes = { 'go', 'go.mod' },
    root_dir = util.root_pattern('go.work', 'go.mod', '.git'),
    settings = {
        gopls = {
            analyses = {
                unusedparams = true,
                shadow = true,
            },
            staticcheck = true,
        }
    }
}))

--python
lspconfig.pyright.setup(config {
  on_attach = on_attach
})

lspconfig.bufls.setup(config {
  on_attach = on_attach,
  cmd = { "bufls", "serve" },
  filetypes = { "proto" }
})

--lua
lspconfig.sumneko_lua.setup {
  settings = {
    Lua = {
      runtime = {
        -- Tell the language server which version of Lua you're using (most likely LuaJIT in the case of Neovim)
        version = 'LuaJIT',
      },
      workspace = {
        -- Make the server aware of Neovim runtime files
        library = vim.api.nvim_get_runtime_file("", true),
      },
      -- Do not send telemetry data containing a randomized but unique identifier
      telemetry = {
        enable = false,
      },
        format = {
            enable = true,
            -- Put format options here
            -- NOTE: the value should be STRING!!
            defaultConfig = {
                indent_style = "space",
                indent_size = "4",
               }
        },
        diagnostics = {
            --my voip projects, were lua embedded
            globals = {
                "vim",
                --freswitch
                "freeswitch",
                "argv",
                "session",
                --kamailio
                "KSR",
                --asterisk
                "app",
            },
            neededFileStatus = {
                ["codestyle-check"] = "Any"
            },

        },


    },
  },
}
