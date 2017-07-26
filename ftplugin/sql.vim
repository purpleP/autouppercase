for plug_path in split(&runtimepath, ',')
    if substitute(plug_path, '.*/\(\w\+$\)', '\1', '') == 'autouppercase'
        let words = system('cat ' . plug_path . '/keywords/sql/*.txt | sort -u')
        for word in split(words, '\n')
            let cmd = 'iabbr <expr> <buffer> ' . word . ' autouppercase#Upper("' . word . '", ["Keyword", "Statement", "Function", "Special", "Operator"])'
            exe cmd
        endfor
    endif
endfor
