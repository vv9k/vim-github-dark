let s:base0      = g:github_colors["base0"][0]
let s:base1      = g:github_colors["base1"][0]
let s:base2      = g:github_colors["base2"][0]
let s:base3      = g:github_colors["base3"][0]
let s:base4      = g:github_colors["base4"][0]
let s:base5      = g:github_colors["base5"][0]
let s:blue       = g:github_colors["blue"][0]
let s:orange     = g:github_colors["orange"][0]
let s:red        = g:github_colors["red"][0]
let s:purp       = g:github_colors["purp"][0]
let s:lightblue  = g:github_colors["lightblue"][0]
let s:green      = g:github_colors["green"][0]

if exists('g:lightline')

    let s:p = {'normal':{}, 'inactive':{}, 'insert':{}, 'replace':{}, 'visual':{}, 'tabline':{}, 'terminal':{}}
    let s:p.inactive.right = [ [ s:base3, s:base1 ], [ s:base4, s:base2 ] ]
    let s:p.inactive.left =  [ [ s:base5, s:base2 ], [ s:base4, s:base2 ] ]
    let s:p.inactive.middle = [ [ s:base3, s:base1 ] ]

    let s:p.normal.left = [ [ s:base0, s:lightblue, 'bold' ], [ s:base5, s:base2, 'bold' ] ]
    let s:p.normal.right = [ [ s:base0, s:lightblue ], [ s:base5, s:base2 ] ]
    let s:p.normal.middle = [ [ s:base4, s:base2 ] ]

    let s:p.insert.left = [ [ s:base0, s:red, 'bold' ], [ s:base5, s:base2, 'bold' ] ]
    let s:p.insert.right = [ [ s:base0, s:red ], [ s:base5, s:base2 ] ]
    let s:p.insert.middle = [ [ s:base4, s:base2 ] ]

    let s:p.replace.left = [ [ s:base0, s:blue, 'bold' ], [ s:base5, s:base2, 'bold' ] ]
    let s:p.replace.right = [ [ s:base0, s:blue ], [ s:base5, s:base2 ] ]
    let s:p.replace.middle = [ [ s:base4, s:base2 ] ]

    let s:p.terminal.left = [ [ s:base0, s:orange, 'bold' ], [ s:base5, s:base2, 'bold' ] ]
    let s:p.terminal.right = [ [ s:base0, s:orange ], [ s:base5, s:base2 ] ]
    let s:p.terminal.middle = [ [ s:base4, s:base2 ] ]

    let s:p.visual.left = [ [ s:base0, s:purp, 'bold' ], [ s:base5, s:base2, 'bold' ] ]
    let s:p.visual.right = [ [ s:base0, s:purp ], [ s:base5, s:base2 ] ]
    let s:p.visual.middle = [ [ s:base4, s:base2 ] ]

    let s:p.tabline.left = [ [ s:base4, s:base2 ] ]
    let s:p.tabline.tabsel = [ [ s:base0, s:base4 ] ]
    let s:p.tabline.middle = [ [ s:base0, s:base0 ] ]
    let s:p.tabline.right = [ [ s:base0, s:red ] ]

    let s:p.normal.error = [ [ s:base0, s:red ] ]
    let s:p.normal.warning = [ [ s:base2, s:orange ] ]

    let g:lightline#colorscheme#ghdark#palette = lightline#colorscheme#fill(s:p)

endif
