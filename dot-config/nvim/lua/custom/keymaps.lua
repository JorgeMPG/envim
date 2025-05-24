--
-- [[ KEYMAPS ]]
--

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are required (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- Keymaps for better default experience
-- See `:help vim.keymap.set()`
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- Open .vimrc
vim.keymap.set('n', '<leader>v', ':split $MYVIMRC<CR>')
-- set hlsearch
vim.keymap.set('n', '<leader>h', ':set hlsearch!<CR>')
-- Toggle line numbers
vim.keymap.set('n', '<leader>n', ':set number! relativenumber!<CR>')

-- CLIPBOARD:
--   Copy to clipboard
vim.keymap.set('v', '<leader>y',  '"+y')
vim.keymap.set('n', '<leader>Y',  '"+yg_')
vim.keymap.set('n', '<leader>y',  '"+y')
vim.keymap.set('n', '<leader>yy',  '"+yy')
--   Paste from clipboard
vim.keymap.set('n', '<leader>p', '"+p')
vim.keymap.set('n', '<leader>P', '"+P')
vim.keymap.set('v', '<leader>p', '"+p')
vim.keymap.set('v', '<leader>P', '"+P')

-- PANES
-- Move to different windows with Ctrl h,j,k,l
-- Normal mode
vim.keymap.set('n', '<C-h>',  '<C-w>h')
vim.keymap.set('n', '<C-j>',  '<C-w>j')
vim.keymap.set('n', '<C-k>',  '<C-w>k')
vim.keymap.set('n', '<C-l>',  '<C-w>l')
-- Insert mode
vim.keymap.set('i', '<C-h>',  '<Esc><C-w>h')
vim.keymap.set('i', '<C-j>',  '<Esc><C-w>j')
vim.keymap.set('i', '<C-k>',  '<Esc><C-w>k')
vim.keymap.set('i', '<C-l>',  '<Esc><C-w>l')
-- Visual mode
vim.keymap.set('v', '<C-h>',  '<Esc><C-w>h')
vim.keymap.set('v', '<C-j>',  '<Esc><C-w>j')
vim.keymap.set('v', '<C-k>',  '<Esc><C-w>k')
vim.keymap.set('v', '<C-l>',  '<Esc><C-w>l')

-- TERMINAL MODE:
-- Defaults
-- Starts in normal mode. Change to insert mode to use the terminal as normal.
-- C-\ C-n returns to normal mode so that window movements work
-- Remap Esc to usual vim functionality (return to normal mode) and M-[ to send Esc to the terminal
--tnoremap <Esc> <C-\><C-n>
--tnoremap <M-[> <Esc>
--vim.keymap.set('t', '<leader><Esc>', '<c-\\><c-n><c-w>h')
-- Switch windows with S-X
--vim.keymap.set('t', '<M-h>', '<c-\\><c-n><c-w>h')
--vim.keymap.set('t', '<M-j>', '<c-\\><c-n><c-w>j')
--vim.keymap.set('t', '<M-k>', '<c-\\><c-n><c-w>k')
--vim.keymap.set('t', '<M-l>', '<c-\\><c-n><c-w>l')

-- COMPLETITION:
-- Defaults
-- C-n :: Normal local autocomplete
-- C-x <extra> :: Omnicomplitation
--    C-] :: Tags file completion
--    C-d :: Definition completion
--    C-f :: Filename completion (based on files in $PWD)
--    C-i :: Path pattern completion
--    C-k :: Dictionary completion
--    C-l :: Whole line completion
--    C-n :: Keyword local completion
--    C-o :: Omni completion completion
--    C-v :: Command line completion
