require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = function(term)
    if term.direction == "horizontal" then
      return 15
    elseif term.direction == "vertical" then
      return vim.o.columns * 0.4
    end
  end,
  open_mapping = [[<c-\>]],
  on_create = function(term) -- function to run when the terminal is first created
    -- Your code here
  end,
  on_open = function(term) -- function to run when the terminal opens
    -- Your code here
  end,
  on_close = function(term) -- function to run when the terminal closes
    -- Your code here
  end,
  on_stdout = function(term, job, data, name) -- callback for processing output on stdout
    -- Your code here
  end,
  on_stderr = function(term, job, data, name) -- callback for processing output on stderr
    -- Your code here
  end,
  on_exit = function(term, job, exit_code, name) -- function to run when terminal process exits
    -- Your code here
  end,
  hide_numbers = true, -- hide the number column in toggleterm buffers
  shade_filetypes = {},
  autochdir = false, -- when Neovim changes its current directory, the terminal will change its own when next it's opened
  shade_terminals = true, -- NOTE: this option takes priority over highlights specified so if you specify Normal highlights you should set this to false
  shading_factor = -30, -- the percentage by which to lighten terminal background, default: -30 (gets multiplied by -3 if background is light)
  start_in_insert = false,
  insert_mappings = true, -- whether or not the open mapping applies in insert mode
  terminal_mappings = true, -- whether or not the open mapping applies in the opened terminals
  persist_size = true,
  persist_mode = true, -- if set to true (default), the previous terminal mode will be remembered
  direction = 'horizontal',
  close_on_exit = true, -- close the terminal window when the process exits
  -- Change the default shell. Can be a string or a function returning a string
  shell = vim.o.shell,
  auto_scroll = false, -- automatically scroll to the bottom on terminal output
  -- This field is only relevant if direction is set to 'float'
  float_opts = {
    -- The border key is *almost* the same as 'nvim_open_win'
    -- see :h nvim_open_win for details on borders; however,
    -- the 'curved' border is a custom border type
    -- not natively supported but implemented in this plugin.
    border = 'curved',
    -- Like `size`, width and height can be a number or function which is passed the current terminal
    width = function(term)
      if term.direction == "horizontal" then
        return vim.o.columns * 0.4
      elseif term.direction == "vertical" then
        return 15
      end
    end,
    height = 10,
    winblend = 3
  },
  winbar = {
    enabled = false,
    name_formatter = function(term) --  term: Terminal
      return term.name
    end
  },
}

