local nnoremap = require'mapx'.nnoremap

-- local silent = require('mapx').silent
-- :nnoremap <silent> <leader>f m`zcVzCzo``

nnoremap("<leader>f", ",")

nnoremap ("f<cr>" , ":Telescope<cr>")

-- Telescope: Finds files.
nnoremap ("ff" ,":lua require('telescope.builtin').find_files()<cr>")

-- Telescope: Finds Media.
nnoremap ("fm" ,":lua require('telescope').extensions.media_files.media_files()<cr>")

-- Telescope: Greps in files.
nnoremap ("fg" ,":lua require('telescope.builtin').live_grep()<cr>")

-- Telescope: Helps with commands.
nnoremap ("fh" ,":lua require('telescope.builtin').help_tags()<cr>")
