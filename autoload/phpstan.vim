function! phpstan#PHPStanAnalyse(...)
    let paths = join(a:000, '\ ')
    exe "setlocal makeprg=phpstan\\ analyse\\ --no-progress\\ -l" . g:phpstan_analyse_level . "\\ " . paths
    " File: path/to/file.php, line: 12, error: error message
    setlocal efm=File%.\ %f%.\ line%.\ %l%.\ error%.\ %m
    setlocal efm+=%-G " Ignore empty lines

    exe "silent make\ \\\|&\ " . g:phpstan_plugin_path . "/phpstan_filter"
    exe "cwindow"
endfun
