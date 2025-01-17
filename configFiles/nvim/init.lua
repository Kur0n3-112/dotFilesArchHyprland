require("configs")
require("options")
require("trouble").setup {} -- puesto porque si no, no permitia usar este plugin

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
