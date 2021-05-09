
let s:base0      = g:github_colors["base0"][0]
let s:base1      = g:github_colors["base1"][0]
let s:base2      = g:github_colors["base2"][0]
let s:base3      = g:github_colors["base3"][0]
let s:base4      = g:github_colors["base4"][0]
let s:base5      = g:github_colors["base5"][0]
let s:blue       = g:github_colors["blue"][0]
let s:yellow     = g:github_colors["yellow"][0]
let s:lightred   = g:github_colors["lightred"][0]
let s:lightpurp  = g:github_colors["lightpurp"][0]
let s:lightblue  = g:github_colors["lightblue"][0]
let s:lightgreen = g:github_colors["lightgreen"][0]

if exists('g:lightline')

    let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}}
    let s:p.inactive.right = [ [ s:base3, s:base1 ], [ s:base3, s:base1 ] ]
    let s:p.inactive.left =  [ [ s:base3, s:base1 ], [ s:base3, s:base1 ] ]
    let s:p.inactive.middle = [ [ s:base3, s:base1 ] ]

    let s:p.normal.left = [ [ s:base0, s:lightblue, 'bold' ], [ s:base5, s:base2 ] ]
    let s:p.normal.right = [ [ s:base0, s:lightblue ], [ s:base5, s:base2 ] ]
    let s:p.normal.middle = [ [ s:base4, s:base1 ] ]

    let s:p.insert.left = [ [ s:base0, s:lightred, 'bold' ], [ s:base5, s:base2 ] ]
    let s:p.insert.right = [ [ s:base0, s:lightred ], [ s:base5, s:base2 ] ]
    let s:p.insert.middle = [ [ s:base4, s:base2 ] ]

    let s:p.replace.left = [ [ s:base0, s:blue, 'bold' ], [ s:base5, s:base2 ] ]
    let s:p.replace.right = [ [ s:base0, s:blue ], [ s:base5, s:base2 ] ]
    let s:p.replace.middle = [ [ s:base4, s:base2 ] ]

    let s:p.terminal.left = [ [ s:base0, s:yellow, 'bold' ], [ s:base5, s:base2 ] ]
    let s:p.terminal.right = [ [ s:base0, s:yellow ], [ s:base5, s:base2 ] ]
    let s:p.terminal.middle = [ [ s:base4, s:base2 ] ]

    let s:p.visual.left = [ [ s:base0, s:lightpurp, 'bold' ], [ s:base5, s:base2 ] ]
    let s:p.visual.right = [ [ s:base0, s:lightpurp ], [ s:base5, s:base2 ] ]
    let s:p.visual.middle = [ [ s:base4, s:base1 ] ]

    let s:p.tabline.left = [ [ s:base4, s:base2 ] ]
    let s:p.tabline.tabsel = [ [ s:base0, s:base4 ] ]
    let s:p.tabline.middle = [ [ s:base0, s:base0 ] ]
    let s:p.tabline.right = [ [ s:base0, s:lightred ] ]

    let s:p.normal.error = [ [ s:base0, s:lightred ] ]
    let s:p.normal.warning = [ [ s:base2, s:yellow ] ]

    let g:lightline#colorscheme#ghdark#palette = lightline#colorscheme#fill(s:p)

endif
