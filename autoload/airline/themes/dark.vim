let g:airline#themes#dark#palette = {}

let g:base0 = "#22272e"
let g:base1 = "#2d333b"
let g:base3 = "#768390"
let g:redorange = "#f47067"
let g:yellow = "#daaa3f"
let g:green = "#8ddb8c"
let g:purp = "#dcbdfb"
let g:blue = "#6cb6ff"
let g:darkerblue = "#82d3ff"

let s:N1 = [ g:base0, g:darkerblue, '', '' ]
let s:N2 = [ g:base3, g:base1, '', '' ]
let s:N3 = [ g:base3, g:base1, '', '' ]
let g:airline#themes#dark#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#dark#palette.normal.airline_error = [ g:base0, g:redorange, '', '' ,'bold']
let g:airline#themes#dark#palette.normal.airline_warning = [ g:base0, g:yellow, '', '' , 'bold']

let s:I1 = [ g:base0, g:purp, '', '' ]
let s:I2 = [ g:base3, g:base1, '', '' ]
let s:I3 = [ g:base3, g:base1, '', '' ]
let g:airline#themes#dark#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#dark#palette.insert.airline_error = [ g:base0, g:redorange, '', '' ,'bold']
let g:airline#themes#dark#palette.insert.airline_warning = [ g:base0, g:yellow, '', '' , 'bold']

let s:R1 = [ g:base0, g:green, '', '' ]
let s:R2 = [ g:base3, g:base1, '', '' ]
let s:R3 = [ g:base3, g:base1, '', '' ]
let g:airline#themes#dark#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#dark#palette.replace.airline_error = [ g:base0, g:redorange, '', '' ,'bold']
let g:airline#themes#dark#palette.replace.airline_warning = [ g:base0, g:yellow, '', '' , 'bold']

let s:V1 = [ g:base0, g:redorange, '', '' ]
let s:V2 = [ g:base3, g:base1, '', '' ]
let s:V3 = [ g:base3, g:base1, '', '' ]
let g:airline#themes#dark#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#dark#palette.visual.airline_error = [ g:base0, g:redorange, '', '' ,'bold']
let g:airline#themes#dark#palette.visual.airline_warning = [ g:base0, g:yellow, '', '' , 'bold']
