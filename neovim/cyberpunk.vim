 let g:airline#themes#cyberpunk#palette = {}

" Normal mode
let s:N1 = [ '#121212', '#0abdc6', 233, 69  ]
let s:N2 = [ '#0abdc6', '#133e7c', 69 , 235 ]
let s:N3 = [ '#0abdc6', '#091833', 69 , 234, 'bold' ]
let g:airline#themes#cyberpunk#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#cyberpunk#palette.normal_modified = {
      \ 'airline_c': [ '#ea00d9', '#091833', 161, 234, 'bold' ],
      \ }

" Insert mode
let s:I1 = [ '#121212', '#00ff87', 233, 48  ]
let s:I2 = s:N2
let s:I3 = s:N3
let g:airline#themes#cyberpunk#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#cyberpunk#palette.insert_modified = g:airline#themes#cyberpunk#palette.normal_modified
let g:airline#themes#cyberpunk#palette.insert_paste = {
      \ 'airline_a': [ "#0abdc6", "#5f5faf", 233, 61, '' ],
      \ }

" Replace mode
let g:airline#themes#cyberpunk#palette.replace = copy(g:airline#themes#cyberpunk#palette.insert)
let g:airline#themes#cyberpunk#palette.replace.airline_a = [ s:I1[0], '#d70057', s:I1[2], 161, '' ]
let g:airline#themes#cyberpunk#palette.replace_modified = g:airline#themes#cyberpunk#palette.insert_modified

" Visual mode
let s:V1 = [ '#121212', '#5fff5f', 233, 83 ]
let s:V2 = s:N2
let s:V3 = s:N3
let g:airline#themes#cyberpunk#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#cyberpunk#palette.visual_modified = g:airline#themes#cyberpunk#palette.normal_modified

" Inactive window
let s:IA1 = [ '#4e4e4e', '#091833', 239, 234, '' ]
let s:IA2 = [ '#4e4e4e', '#133e7c', 239, 235, '' ]
let s:IA3 = [ '#4e4e4e', '#091833', 239, 234, 'bold' ]
let g:airline#themes#cyberpunk#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)
let g:airline#themes#cyberpunk#palette.inactive_modified = {
      \ 'airline_c': [ '#5f5f87', '#1c1c1c', 60, 234, 'bold' ],
      \ }

" Accents
let g:airline#themes#cyberpunk#palette.accents = {
      \ 'red': [ '#ea00d9', '', 161, '' ]
      \ }

" Warnings
let s:WI = [ '#121212', '#ea00d9', 233, 161 ]
let g:airline#themes#cyberpunk#palette.normal.airline_warning = s:WI
let g:airline#themes#cyberpunk#palette.normal_modified.airline_warning = s:WI
let g:airline#themes#cyberpunk#palette.insert.airline_warning = s:WI
let g:airline#themes#cyberpunk#palette.insert_modified.airline_warning = s:WI
let g:airline#themes#cyberpunk#palette.insert_paste.airline_warning = s:WI
let g:airline#themes#cyberpunk#palette.visual.airline_warning = s:WI
let g:airline#themes#cyberpunk#palette.visual_modified.airline_warning = s:WI
let g:airline#themes#cyberpunk#palette.replace.airline_warning = s:WI
let g:airline#themes#cyberpunk#palette.replace_modified.airline_warning = s:WI
