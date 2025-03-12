-- calls to main config files
require("configs.init")
require("trouble").setup {} -- puesto porque si no, no permitia usar este plugin

-- calls to plugins configs files
require("plugins.oil")
require("plugins.ale")
require("plugins.colors")
require("plugins.fugitive")
require("plugins.harpoon")
require("plugins.lsp")
require("plugins.mason")
require("plugins.neoclip")
require("plugins.oil")
require("plugins.rmAllMarks")
require("plugins.telescope")
require("plugins.treesitter")
require("plugins.trouble")
require("plugins.undotree")
require("plugins.rust-tools")
require("plugins.vimtex")
require("plugins.copilot")

-- Configuración para ajustar secuencias de escape en tmux
--vim.cmd([[
--if exists('$TMUX')
--  let &t_SI = "\ePtmux;\e\e[5 q\e\\"
--  let &t_EI = "\ePtmux;\e\e[2 q\e\\"
--else
--  let &t_SI = "\e[5 q"
--  let &t_EI = "\e[2 q"
--endif
--]])
