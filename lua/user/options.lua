vim.opt.clipboard = "unnamed,unnamedplus" -- access to clipboard
vim.opt.termguicolors = true              -- set term gui colors (most terminals support this)
vim.opt.tabstop = 2                       -- Number of spaces that a <Tab> in the file counts for
vim.opt.shiftwidth = 2                    -- Number of spaces to use for each step of (auto)indent ">>"
vim.opt.softtabstop = 2                   -- Number of spaces that a <Tab> counts for while performing editing operations
vim.opt.expandtab = true                  -- Uses spaces for tabs
vim.opt.autoindent = true                 -- auto indent when adding a new line with o O
vim.opt.smartindent = true                -- auto indent when adding a new line
vim.opt.linespace = 4                     -- Number of pixel lines inserted between characters
vim.opt.history = 50                      -- Scroll up command history
vim.opt.number = true                     -- Line number
vim.opt.wrap = true                       -- Break if line too long
vim.opt.showbreak = "..."                 -- Used when wrapping
vim.opt.cmdheight = 2                     -- more space in the neovim command line for displaying messages
vim.opt.fileencoding = "utf-8"            -- the encoding written to a file
vim.opt.encoding = "utf-8"
vim.opt.hlsearch = true                   -- highlight all matches on previous search pattern
vim.opt.mouse = "a"                       -- allow the mouse to be used in neovim
-- vim.opt.showtabline = 2                   -- always show tabs
vim.opt.smartcase = true                  -- smart case
vim.opt.splitbelow = true                 -- force all horizontal splits to go below current window
vim.opt.splitright = true                 -- force all vertical splits to go to the right of current window
vim.opt.swapfile = false                   -- creates a swapfile
vim.opt.cursorline = true                 -- highlight the current line
vim.opt.numberwidth = 4                   -- set number column width to 2 {default 4}
--vim.opt.guifont = "monospace:h17"         -- the font used in graphical neovim applications
vim.opt.wildignore = {                    --ignore patterns
  '*/tmp/*',
  '*.so',
  '*.swp',
  '*.zip',
  '*/_build/*',
  '*.beam',
  '*/deps/*',
  '*.zip'
}
