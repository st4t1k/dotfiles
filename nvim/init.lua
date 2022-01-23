require('plugins')
require('settings')
require('keymaps')
require('tools')

require('trim').setup({
    disable = {"markdown"},
})

local global_search_dirs = lines_from(os.getenv("HOME") .. '/.search')

require("telescope").setup {
    pickers = {
        -- Your special builtin config goes in here
        find_files = {
            layout_strategy = 'flex',
            search_dirs = {
                unpack(global_search_dirs),
                '.'
            }
        },
        live_grep = {
            layout_strategy = 'flex',
            search_dirs = {
                unpack(global_search_dirs),
                '.'
            }
        }
    },
}

-- Setup nvim-cmp.
local cmp = require('cmp')
local lspkind = require('lspkind')

cmp.setup({
    -- snippet = {
    --     expand = function(args)
    --         vim.fn["vsnip#anonymous"](args.body) -- For `vsnip` users.
    --         require('luasnip').lsp_expand(args.body) -- For `luasnip` users.
    --         vim.fn["UltiSnips#Anon"](args.body) -- For `ultisnips` users.
    --         require'snippy'.expand_snippet(args.body) -- For `snippy` users.
    --     end,
    -- },
    mapping = {
        ['<C-b>'] = cmp.mapping(cmp.mapping.scroll_docs(-4), { 'i', 'c' }),
        ['<C-f>'] = cmp.mapping(cmp.mapping.scroll_docs(4), { 'i', 'c' }),
        ['<C-n>'] = cmp.mapping.select_next_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<C-p>'] = cmp.mapping.select_prev_item({ behavior = cmp.SelectBehavior.Insert }),
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
    },
    sources = {
        { name = 'nvim_lsp' },
        { name = 'path' },
        { name = 'buffer', keyword_length = 5 },
    },
    formatting = {
        format = lspkind.cmp_format {
            with_text = true,
            menu = {
                buffer = '[BUF]',
                nvim_lsp = '[LSP]',
                path = '[PATH]',
            }
        }
    }
})

-- Setup lspconfig.
local capabilities = require('cmp_nvim_lsp').update_capabilities(vim.lsp.protocol.make_client_capabilities())

require('lspconfig').intelephense.setup {
    capabilities = capabilities
}

require('lspconfig').rust_analyzer.setup {
    capabilities = capabilities
}

-- Debugging
local dap = require('dap')

dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { '/Users/work/code/tools/vscode-php-debug/out/phpDebug.js' }
}

dap.configurations.php = {
    {
        type = 'php',
        request = 'launch',
        name = 'Listen for Xdebug',
        port = 9003
    }
}

require('dapui').setup()

local dap, dapui = require("dap"), require("dapui")
dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
