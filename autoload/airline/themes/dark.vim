let g:airline#themes#dark#palette = {}

let base0 = g:github_colors["base0"][0]
let base1 = g:github_colors["base1"][0]
let base3 = g:github_colors["base3"][0]
let lightred = g:github_colors["lightred"][0]
let yellow = g:github_colors["yellow"][0]
let lightpurp = g:github_colors["lightpurp"][0]
let lightblue = g:github_colors["lightblue"][0]
let blue = g:github_colors["blue"][0]

let s:N1 = [ base0, lightblue, '', '' ]
let s:N2 = [ base3, base1, '', '' ]
let s:N3 = [ base3, base1, '', '' ]
let g:airline#themes#dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#dark#palette.normal.airline_error = [ base0, lightred, '', '' ,'bold']
let g:airline#themes#dark#palette.normal.airline_warning = [ base0, yellow, '', '' , 'bold']

let s:I1 = [ base0, lightred, '', '' ]
let s:I2 = [ base3, base1, '', '' ]
let s:I3 = [ base3, base1, '', '' ]
let g:airline#themes#dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#dark#palette.insert.airline_error = [ base0, lightred, '', '' ,'bold']
let g:airline#themes#dark#palette.insert.airline_warning = [ base0, yellow, '', '' , 'bold']

let s:R1 = [ base0, blue, '', '' ]
let s:R2 = [ base3, base1, '', '' ]
let s:R3 = [ base3, base1, '', '' ]
let g:airline#themes#dark#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#dark#palette.replace.airline_error = [ base0, lightred, '', '' ,'bold']
let g:airline#themes#dark#palette.replace.airline_warning = [ base0, yellow, '', '' , 'bold']

let s:V1 = [ base0, lightpurp, '', '' ]
let s:V2 = [ base3, base1, '', '' ]
let s:V3 = [ base3, base1, '', '' ]
let g:airline#themes#dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#dark#palette.visual.airline_error = [ base0, lightred, '', '' ,'bold']
let g:airline#themes#dark#palette.visual.airline_warning = [ base0, yellow, '', '' , 'bold']
