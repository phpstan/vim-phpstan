if exists('g:phpstan_plugin_loaded') || &cp
    finish
endif
let g:phpstan_plugin_loaded = 1

let g:phpstan_plugin_path = expand('<sfile>:p:h')

if !exists('g:phpstan_analyse_level')
    let g:phpstan_analyse_level = 2
endif

" A command to call
command! -nargs=+ PHPStanAnalyse call phpstan#PHPStanAnalyse(<f-args>)
