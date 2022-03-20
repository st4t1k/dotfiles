require('tools')

vim.api.nvim_set_keymap('n', '<Space>', '<NOP>', { noremap = true, silent = true })

vim.g.mapleader = ' '
vim.g.user_emmet_leader_key = ','

-- File/Buffet manipulation
vim.api.nvim_set_keymap('n', '<Leader>w', ':w<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>q', ':bd<CR>', { noremap = true, silent = true })

-- Open Nvim tree
vim.api.nvim_set_keymap('n', '<Leader>e', ':NvimTreeToggle<CR>', { noremap = true, silent = true })

-- Better window movement
vim.api.nvim_set_keymap('n', '<C-J>', '<C-W><C-J>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-K>', '<C-W><C-K>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-H>', '<C-W><C-H>', { silent = true })
vim.api.nvim_set_keymap('n', '<C-L>', '<C-W><C-L>', { silent = true })

-- Better escape
vim.api.nvim_set_keymap('i', 'jj', '<ESC>', { noremap = true, silent = true })

-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>p', ':Telescope find_files<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>c', ':Telescope commands<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>j', ':Telescope buffers<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>f', ':Telescope live_grep<CR>', { noremap = true, silent = true })

-- LSP
vim.api.nvim_set_keymap('n', '<Leader>h', '<Cmd>lua vim.lsp.buf.hover()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>gd', '<Cmd>lua vim.lsp.buf.definition()<CR>', { noremap = true, silent = false })

-- Telescope
vim.api.nvim_set_keymap('n', '<Leader>lm', ':Telescope lsp_document_symbols<CR>', { noremap = true, silent = true })

local autocmds = {
	run = {
		{
            "BufEnter",
            "*.php",
            "lua vim.api.nvim_set_keymap('n', '<Leader>r', ':!php artisan optimize:clear<CR>', { noremap = true, silent = true })"
        },
		{
            "BufEnter",
            "*.rs", "lua vim.api.nvim_set_keymap('n', '<Leader>r', ':!cargo run<CR>', { noremap = true, silent = true })"
        }
	},
}

create_augroups(autocmds)

-- Debug
vim.api.nvim_set_keymap('n', '<Leader>b', ':lua require\'dap\'.toggle_breakpoint()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>dc', ':lua require\'dap\'.continue()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>ds', ':lua require\'dap\'.terminate()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>si', ':lua require\'dap\'.step_into()<CR>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<Leader>so', ':lua require\'dap\'.step_over()<CR>', { noremap = true, silent = true })
