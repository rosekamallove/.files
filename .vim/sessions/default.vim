let SessionLoad = 1
if &cp | set nocp | endif
let s:cpo_save=&cpo
set cpo&vim
inoremap <silent> <expr> <Plug>(coc-snippets-expand-jump) coc#_insert_key('notify', 'snippets-expand-jump', 1)
inoremap <silent> <expr> <Plug>(coc-snippets-expand) coc#_insert_key('notify', 'snippets-expand', 1)
inoremap <silent> <expr> <BS> coc#_insert_key('request', 'iPGJzPg==0')
inoremap <silent> <Plug>CocRefresh =coc#_complete()
imap <F9> :InsPrevHita
imap <F8> :InsNextHita
imap <F5> :PreviewClassa
imap <S-Tab> <Plug>SuperTabBackward
inoremap <silent> <C-Tab> =UltiSnips#ListSnippets()
snoremap <silent>  "_c
xnoremap <silent> 	 :call UltiSnips#SaveLastVisualSelection()gvs
snoremap <silent> 	 :call UltiSnips#ExpandSnippet()
map  :NERDTreeToggle
map  <Plug>(ctrlp)
snoremap  "_c
nnoremap <silent> \mt :MinimapToggle
nnoremap <silent> \mc :MinimapClose
nnoremap <silent> \mu :MinimapUpdate
nnoremap <silent> \mm :Minimap
nmap \cfF :CodeForcesLoadFriends
nmap \cft :CodeForcesTest
nmap \cfA :CodeForcesParseContest
nmap \cfcp :CodeForcesContestListPrev
nmap \cfcn :CodeForcesContestListNext
nmap \cfcl :CodeForcesContestList
nmap \cfR :CodeForcesRoomStandings
nmap \cfP :CodeForcesPageStandings 
nmap \cfl :CodeForcesLoadTask 
nmap \cfu :CodeForcesUnofficial
nmap \cff :CodeForcesFriendsSet
nmap \cfs :CodeForcesStandings
nmap \cfn :CodeForcesNextStandings
nmap \cfp :CodeForcesPrevStandings
nmap \cfS :CodeForcesSubmission
nmap \cfr :CodeForcesSetRound 
noremap bnrsrch :r ~/.vim/templates/implementations/binarySearch.cpp
noremap bcpp :r ~/.vim/templates/basic.cpp
vmap gx <Plug>NetrwBrowseXVis
nmap gx <Plug>NetrwBrowseX
noremap runc :!g++  %  % ; ./a.out
noremap sv :w
noremap splr :botright vert split
noremap ter :botright vert terminal
vnoremap <silent> <Plug>(coc-snippets-select) :call coc#rpc#notify('doKeymap', ['snippets-select'])
xnoremap <silent> <Plug>(coc-convert-snippet) :call coc#rpc#notify('doKeymap', ['convert-snippet'])
vnoremap <silent> <Plug>(coc-explorer-key-v-ai) :call coc#rpc#request('doKeymap', ['explorer-key-v-ai'])
vnoremap <silent> <Plug>(coc-explorer-key-v-ii) :call coc#rpc#request('doKeymap', ['explorer-key-v-ii'])
vnoremap <silent> <Plug>(coc-explorer-key-v-al) :call coc#rpc#request('doKeymap', ['explorer-key-v-al'])
vnoremap <silent> <Plug>(coc-explorer-key-v->>) :call coc#rpc#request('doKeymap', ['explorer-key-v->>'])
vnoremap <silent> <Plug>(coc-explorer-key-v-<<) :call coc#rpc#request('doKeymap', ['explorer-key-v-<<'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]C) :call coc#rpc#request('doKeymap', ['explorer-key-v-]C'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[C) :call coc#rpc#request('doKeymap', ['explorer-key-v-[C'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]c) :call coc#rpc#request('doKeymap', ['explorer-key-v-]c'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[c) :call coc#rpc#request('doKeymap', ['explorer-key-v-[c'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]D) :call coc#rpc#request('doKeymap', ['explorer-key-v-]D'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[D) :call coc#rpc#request('doKeymap', ['explorer-key-v-[D'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]d) :call coc#rpc#request('doKeymap', ['explorer-key-v-]d'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[d) :call coc#rpc#request('doKeymap', ['explorer-key-v-[d'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]m) :call coc#rpc#request('doKeymap', ['explorer-key-v-]m'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[m) :call coc#rpc#request('doKeymap', ['explorer-key-v-[m'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]i) :call coc#rpc#request('doKeymap', ['explorer-key-v-]i'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[i) :call coc#rpc#request('doKeymap', ['explorer-key-v-[i'])
vnoremap <silent> <Plug>(coc-explorer-key-v-]]) :call coc#rpc#request('doKeymap', ['explorer-key-v-]]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[[) :call coc#rpc#request('doKeymap', ['explorer-key-v-[['])
vnoremap <silent> <Plug>(coc-explorer-key-v-gb) :call coc#rpc#request('doKeymap', ['explorer-key-v-gb'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gf) :call coc#rpc#request('doKeymap', ['explorer-key-v-gf'])
vnoremap <silent> <Plug>(coc-explorer-key-v-F) :call coc#rpc#request('doKeymap', ['explorer-key-v-F'])
vnoremap <silent> <Plug>(coc-explorer-key-v-f) :call coc#rpc#request('doKeymap', ['explorer-key-v-f'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gd) :call coc#rpc#request('doKeymap', ['explorer-key-v-gd'])
vnoremap <silent> <Plug>(coc-explorer-key-v-X) :call coc#rpc#request('doKeymap', ['explorer-key-v-X'])
vnoremap <silent> <Plug>(coc-explorer-key-v-q) :call coc#rpc#request('doKeymap', ['explorer-key-v-q'])
vnoremap <silent> <Plug>(coc-explorer-key-v-?) :call coc#rpc#request('doKeymap', ['explorer-key-v-?'])
vnoremap <silent> <Plug>(coc-explorer-key-v-R) :call coc#rpc#request('doKeymap', ['explorer-key-v-R'])
vnoremap <silent> <Plug>(coc-explorer-key-v-g.) :call coc#rpc#request('doKeymap', ['explorer-key-v-g.'])
vnoremap <silent> <Plug>(coc-explorer-key-v-zh) :call coc#rpc#request('doKeymap', ['explorer-key-v-zh'])
vnoremap <silent> <Plug>(coc-explorer-key-v-r) :call coc#rpc#request('doKeymap', ['explorer-key-v-r'])
vnoremap <silent> <Plug>(coc-explorer-key-v-A) :call coc#rpc#request('doKeymap', ['explorer-key-v-A'])
vnoremap <silent> <Plug>(coc-explorer-key-v-a) :call coc#rpc#request('doKeymap', ['explorer-key-v-a'])
vnoremap <silent> <Plug>(coc-explorer-key-v-dF) :call coc#rpc#request('doKeymap', ['explorer-key-v-dF'])
vnoremap <silent> <Plug>(coc-explorer-key-v-df) :call coc#rpc#request('doKeymap', ['explorer-key-v-df'])
vnoremap <silent> <Plug>(coc-explorer-key-v-p) :call coc#rpc#request('doKeymap', ['explorer-key-v-p'])
vnoremap <silent> <Plug>(coc-explorer-key-v-dD) :call coc#rpc#request('doKeymap', ['explorer-key-v-dD'])
vnoremap <silent> <Plug>(coc-explorer-key-v-dd) :call coc#rpc#request('doKeymap', ['explorer-key-v-dd'])
vnoremap <silent> <Plug>(coc-explorer-key-v-yY) :call coc#rpc#request('doKeymap', ['explorer-key-v-yY'])
vnoremap <silent> <Plug>(coc-explorer-key-v-yy) :call coc#rpc#request('doKeymap', ['explorer-key-v-yy'])
vnoremap <silent> <Plug>(coc-explorer-key-v-yn) :call coc#rpc#request('doKeymap', ['explorer-key-v-yn'])
vnoremap <silent> <Plug>(coc-explorer-key-v-yp) :call coc#rpc#request('doKeymap', ['explorer-key-v-yp'])
vnoremap <silent> <Plug>(coc-explorer-key-v-II) :call coc#rpc#request('doKeymap', ['explorer-key-v-II'])
vnoremap <silent> <Plug>(coc-explorer-key-v-Ic) :call coc#rpc#request('doKeymap', ['explorer-key-v-Ic'])
vnoremap <silent> <Plug>(coc-explorer-key-v-Il) :call coc#rpc#request('doKeymap', ['explorer-key-v-Il'])
vnoremap <silent> <Plug>(coc-explorer-key-v-ic) :call coc#rpc#request('doKeymap', ['explorer-key-v-ic'])
vnoremap <silent> <Plug>(coc-explorer-key-v-il) :call coc#rpc#request('doKeymap', ['explorer-key-v-il'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gs) :call coc#rpc#request('doKeymap', ['explorer-key-v-gs'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[bs]) :call coc#rpc#request('doKeymap', ['explorer-key-v-[bs]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-t) :call coc#rpc#request('doKeymap', ['explorer-key-v-t'])
vnoremap <silent> <Plug>(coc-explorer-key-v-E) :call coc#rpc#request('doKeymap', ['explorer-key-v-E'])
vnoremap <silent> <Plug>(coc-explorer-key-v-s) :call coc#rpc#request('doKeymap', ['explorer-key-v-s'])
vnoremap <silent> <Plug>(coc-explorer-key-v-e) :call coc#rpc#request('doKeymap', ['explorer-key-v-e'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[cr]) :call coc#rpc#request('doKeymap', ['explorer-key-v-[cr]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[2-LeftMouse]) :call coc#rpc#request('doKeymap', ['explorer-key-v-[2-LeftMouse]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gh) :call coc#rpc#request('doKeymap', ['explorer-key-v-gh'])
vnoremap <silent> <Plug>(coc-explorer-key-v-gl) :call coc#rpc#request('doKeymap', ['explorer-key-v-gl'])
vnoremap <silent> <Plug>(coc-explorer-key-v-K) :call coc#rpc#request('doKeymap', ['explorer-key-v-K'])
vnoremap <silent> <Plug>(coc-explorer-key-v-J) :call coc#rpc#request('doKeymap', ['explorer-key-v-J'])
vnoremap <silent> <Plug>(coc-explorer-key-v-l) :call coc#rpc#request('doKeymap', ['explorer-key-v-l'])
vnoremap <silent> <Plug>(coc-explorer-key-v-h) :call coc#rpc#request('doKeymap', ['explorer-key-v-h'])
vnoremap <silent> <Plug>(coc-explorer-key-v-[tab]) :call coc#rpc#request('doKeymap', ['explorer-key-v-[tab]'])
vnoremap <silent> <Plug>(coc-explorer-key-v-*) :call coc#rpc#request('doKeymap', ['explorer-key-v-*'])
nnoremap <silent> <Plug>(coc-explorer-key-n->>) :call coc#rpc#request('doKeymap', ['explorer-key-n->>'])
nnoremap <silent> <Plug>(coc-explorer-key-n-<<) :call coc#rpc#request('doKeymap', ['explorer-key-n-<<'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]C) :call coc#rpc#request('doKeymap', ['explorer-key-n-]C'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[C) :call coc#rpc#request('doKeymap', ['explorer-key-n-[C'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]c) :call coc#rpc#request('doKeymap', ['explorer-key-n-]c'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[c) :call coc#rpc#request('doKeymap', ['explorer-key-n-[c'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]D) :call coc#rpc#request('doKeymap', ['explorer-key-n-]D'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[D) :call coc#rpc#request('doKeymap', ['explorer-key-n-[D'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]d) :call coc#rpc#request('doKeymap', ['explorer-key-n-]d'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[d) :call coc#rpc#request('doKeymap', ['explorer-key-n-[d'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]m) :call coc#rpc#request('doKeymap', ['explorer-key-n-]m'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[m) :call coc#rpc#request('doKeymap', ['explorer-key-n-[m'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]i) :call coc#rpc#request('doKeymap', ['explorer-key-n-]i'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[i) :call coc#rpc#request('doKeymap', ['explorer-key-n-[i'])
nnoremap <silent> <Plug>(coc-explorer-key-n-]]) :call coc#rpc#request('doKeymap', ['explorer-key-n-]]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[[) :call coc#rpc#request('doKeymap', ['explorer-key-n-[['])
nnoremap <silent> <Plug>(coc-explorer-key-n-gb) :call coc#rpc#request('doKeymap', ['explorer-key-n-gb'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gf) :call coc#rpc#request('doKeymap', ['explorer-key-n-gf'])
nnoremap <silent> <Plug>(coc-explorer-key-n-F) :call coc#rpc#request('doKeymap', ['explorer-key-n-F'])
nnoremap <silent> <Plug>(coc-explorer-key-n-f) :call coc#rpc#request('doKeymap', ['explorer-key-n-f'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gd) :call coc#rpc#request('doKeymap', ['explorer-key-n-gd'])
nnoremap <silent> <Plug>(coc-explorer-key-n-X) :call coc#rpc#request('doKeymap', ['explorer-key-n-X'])
nnoremap <silent> <Plug>(coc-explorer-key-n-q) :call coc#rpc#request('doKeymap', ['explorer-key-n-q'])
nnoremap <silent> <Plug>(coc-explorer-key-n-?) :call coc#rpc#request('doKeymap', ['explorer-key-n-?'])
nnoremap <silent> <Plug>(coc-explorer-key-n-R) :call coc#rpc#request('doKeymap', ['explorer-key-n-R'])
nnoremap <silent> <Plug>(coc-explorer-key-n-g.) :call coc#rpc#request('doKeymap', ['explorer-key-n-g.'])
nnoremap <silent> <Plug>(coc-explorer-key-n-zh) :call coc#rpc#request('doKeymap', ['explorer-key-n-zh'])
nnoremap <silent> <Plug>(coc-explorer-key-n-r) :call coc#rpc#request('doKeymap', ['explorer-key-n-r'])
nnoremap <silent> <Plug>(coc-explorer-key-n-A) :call coc#rpc#request('doKeymap', ['explorer-key-n-A'])
nnoremap <silent> <Plug>(coc-explorer-key-n-a) :call coc#rpc#request('doKeymap', ['explorer-key-n-a'])
nnoremap <silent> <Plug>(coc-explorer-key-n-dF) :call coc#rpc#request('doKeymap', ['explorer-key-n-dF'])
nnoremap <silent> <Plug>(coc-explorer-key-n-df) :call coc#rpc#request('doKeymap', ['explorer-key-n-df'])
nnoremap <silent> <Plug>(coc-explorer-key-n-p) :call coc#rpc#request('doKeymap', ['explorer-key-n-p'])
nnoremap <silent> <Plug>(coc-explorer-key-n-dD) :call coc#rpc#request('doKeymap', ['explorer-key-n-dD'])
nnoremap <silent> <Plug>(coc-explorer-key-n-dd) :call coc#rpc#request('doKeymap', ['explorer-key-n-dd'])
nnoremap <silent> <Plug>(coc-explorer-key-n-yY) :call coc#rpc#request('doKeymap', ['explorer-key-n-yY'])
nnoremap <silent> <Plug>(coc-explorer-key-n-yy) :call coc#rpc#request('doKeymap', ['explorer-key-n-yy'])
nnoremap <silent> <Plug>(coc-explorer-key-n-yn) :call coc#rpc#request('doKeymap', ['explorer-key-n-yn'])
nnoremap <silent> <Plug>(coc-explorer-key-n-yp) :call coc#rpc#request('doKeymap', ['explorer-key-n-yp'])
nnoremap <silent> <Plug>(coc-explorer-key-n-II) :call coc#rpc#request('doKeymap', ['explorer-key-n-II'])
nnoremap <silent> <Plug>(coc-explorer-key-n-Ic) :call coc#rpc#request('doKeymap', ['explorer-key-n-Ic'])
nnoremap <silent> <Plug>(coc-explorer-key-n-Il) :call coc#rpc#request('doKeymap', ['explorer-key-n-Il'])
nnoremap <silent> <Plug>(coc-explorer-key-n-ic) :call coc#rpc#request('doKeymap', ['explorer-key-n-ic'])
nnoremap <silent> <Plug>(coc-explorer-key-n-il) :call coc#rpc#request('doKeymap', ['explorer-key-n-il'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gs) :call coc#rpc#request('doKeymap', ['explorer-key-n-gs'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[bs]) :call coc#rpc#request('doKeymap', ['explorer-key-n-[bs]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-t) :call coc#rpc#request('doKeymap', ['explorer-key-n-t'])
nnoremap <silent> <Plug>(coc-explorer-key-n-E) :call coc#rpc#request('doKeymap', ['explorer-key-n-E'])
nnoremap <silent> <Plug>(coc-explorer-key-n-s) :call coc#rpc#request('doKeymap', ['explorer-key-n-s'])
nnoremap <silent> <Plug>(coc-explorer-key-n-e) :call coc#rpc#request('doKeymap', ['explorer-key-n-e'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[cr]) :call coc#rpc#request('doKeymap', ['explorer-key-n-[cr]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-o) :call coc#rpc#request('doKeymap', ['explorer-key-n-o'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[2-LeftMouse]) :call coc#rpc#request('doKeymap', ['explorer-key-n-[2-LeftMouse]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gh) :call coc#rpc#request('doKeymap', ['explorer-key-n-gh'])
nnoremap <silent> <Plug>(coc-explorer-key-n-gl) :call coc#rpc#request('doKeymap', ['explorer-key-n-gl'])
nnoremap <silent> <Plug>(coc-explorer-key-n-K) :call coc#rpc#request('doKeymap', ['explorer-key-n-K'])
nnoremap <silent> <Plug>(coc-explorer-key-n-J) :call coc#rpc#request('doKeymap', ['explorer-key-n-J'])
nnoremap <silent> <Plug>(coc-explorer-key-n-l) :call coc#rpc#request('doKeymap', ['explorer-key-n-l'])
nnoremap <silent> <Plug>(coc-explorer-key-n-h) :call coc#rpc#request('doKeymap', ['explorer-key-n-h'])
nnoremap <silent> <Plug>(coc-explorer-key-n-[tab]) :call coc#rpc#request('doKeymap', ['explorer-key-n-[tab]'])
nnoremap <silent> <Plug>(coc-explorer-key-n-*) :call coc#rpc#request('doKeymap', ['explorer-key-n-*'])
vnoremap <silent> <Plug>NetrwBrowseXVis :call netrw#BrowseXVis()
nnoremap <silent> <Plug>NetrwBrowseX :call netrw#BrowseX(expand((exists("g:netrw_gx")? g:netrw_gx : '<cfile>')),netrw#CheckIfRemote())
onoremap <silent> <Plug>(coc-classobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, '', ['Interface', 'Struct', 'Class']])
onoremap <silent> <Plug>(coc-classobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, '', ['Interface', 'Struct', 'Class']])
vnoremap <silent> <Plug>(coc-classobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, visualmode(), ['Interface', 'Struct', 'Class']])
vnoremap <silent> <Plug>(coc-classobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, visualmode(), ['Interface', 'Struct', 'Class']])
onoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, '', ['Method', 'Function']])
onoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, '', ['Method', 'Function']])
vnoremap <silent> <Plug>(coc-funcobj-a) :call coc#rpc#request('selectSymbolRange', [v:false, visualmode(), ['Method', 'Function']])
vnoremap <silent> <Plug>(coc-funcobj-i) :call coc#rpc#request('selectSymbolRange', [v:true, visualmode(), ['Method', 'Function']])
nnoremap <silent> <Plug>(coc-cursors-position) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'position', 'n'])
nnoremap <silent> <Plug>(coc-cursors-word) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'word', 'n'])
vnoremap <silent> <Plug>(coc-cursors-range) :call coc#rpc#request('cursorsSelect', [bufnr('%'), 'range', visualmode()])
nnoremap <silent> <Plug>(coc-refactor) :call       CocActionAsync('refactor')
nnoremap <silent> <Plug>(coc-command-repeat) :call       CocAction('repeatCommand')
nnoremap <silent> <Plug>(coc-float-jump) :call       coc#float#jump()
nnoremap <silent> <Plug>(coc-float-hide) :call       coc#float#close_all()
nnoremap <silent> <Plug>(coc-fix-current) :call       CocActionAsync('doQuickfix')
nnoremap <silent> <Plug>(coc-openlink) :call       CocActionAsync('openLink')
nnoremap <silent> <Plug>(coc-references-used) :call       CocActionAsync('jumpUsed')
nnoremap <silent> <Plug>(coc-references) :call       CocActionAsync('jumpReferences')
nnoremap <silent> <Plug>(coc-type-definition) :call       CocActionAsync('jumpTypeDefinition')
nnoremap <silent> <Plug>(coc-implementation) :call       CocActionAsync('jumpImplementation')
nnoremap <silent> <Plug>(coc-declaration) :call       CocActionAsync('jumpDeclaration')
nnoremap <silent> <Plug>(coc-definition) :call       CocActionAsync('jumpDefinition')
nnoremap <silent> <Plug>(coc-diagnostic-prev-error) :call       CocActionAsync('diagnosticPrevious', 'error')
nnoremap <silent> <Plug>(coc-diagnostic-next-error) :call       CocActionAsync('diagnosticNext',     'error')
nnoremap <silent> <Plug>(coc-diagnostic-prev) :call       CocActionAsync('diagnosticPrevious')
nnoremap <silent> <Plug>(coc-diagnostic-next) :call       CocActionAsync('diagnosticNext')
nnoremap <silent> <Plug>(coc-diagnostic-info) :call       CocActionAsync('diagnosticInfo')
nnoremap <silent> <Plug>(coc-format) :call       CocActionAsync('format')
nnoremap <silent> <Plug>(coc-rename) :call       CocActionAsync('rename')
nnoremap <Plug>(coc-codeaction-line) :call       CocActionAsync('codeAction',         'n')
nnoremap <Plug>(coc-codeaction) :call       CocActionAsync('codeAction',         '')
vnoremap <silent> <Plug>(coc-codeaction-selected) :call       CocActionAsync('codeAction',         visualmode())
vnoremap <silent> <Plug>(coc-format-selected) :call       CocActionAsync('formatSelected',     visualmode())
nnoremap <Plug>(coc-codelens-action) :call       CocActionAsync('codeLensAction')
nnoremap <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     '', v:true)
vnoremap <silent> <Plug>(coc-range-select-backward) :call       CocActionAsync('rangeSelect',     visualmode(), v:false)
vnoremap <silent> <Plug>(coc-range-select) :call       CocActionAsync('rangeSelect',     visualmode(), v:true)
nnoremap <silent> <Plug>GitGutterPreviewHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterPreviewHunk to <Plug>(GitGutterPreviewHunk)')
nnoremap <silent> <Plug>(GitGutterPreviewHunk) :GitGutterPreviewHunk
nnoremap <silent> <Plug>GitGutterUndoHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterUndoHunk to <Plug>(GitGutterUndoHunk)')
nnoremap <silent> <Plug>(GitGutterUndoHunk) :GitGutterUndoHunk
nnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
nnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
xnoremap <silent> <Plug>GitGutterStageHunk :call gitgutter#utility#warn('please change your map <Plug>GitGutterStageHunk to <Plug>(GitGutterStageHunk)')
xnoremap <silent> <Plug>(GitGutterStageHunk) :GitGutterStageHunk
nnoremap <silent> <expr> <Plug>GitGutterPrevHunk &diff ? '[c' : ":\call gitgutter#utility#warn('please change your map \<Plug>GitGutterPrevHunk to \<Plug>(GitGutterPrevHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterPrevHunk) &diff ? '[c' : ":\execute v:count1 . 'GitGutterPrevHunk'\"
nnoremap <silent> <expr> <Plug>GitGutterNextHunk &diff ? ']c' : ":\call gitgutter#utility#warn('please change your map \<Plug>GitGutterNextHunk to \<Plug>(GitGutterNextHunk)')\"
nnoremap <silent> <expr> <Plug>(GitGutterNextHunk) &diff ? ']c' : ":\execute v:count1 . 'GitGutterNextHunk'\"
xnoremap <silent> <Plug>(GitGutterTextObjectOuterVisual) :call gitgutter#hunk#text_object(0)
xnoremap <silent> <Plug>(GitGutterTextObjectInnerVisual) :call gitgutter#hunk#text_object(1)
onoremap <silent> <Plug>(GitGutterTextObjectOuterPending) :call gitgutter#hunk#text_object(0)
onoremap <silent> <Plug>(GitGutterTextObjectInnerPending) :call gitgutter#hunk#text_object(1)
map <C-P> <Plug>(ctrlp)
nnoremap <silent> <Plug>(ctrlp) :CtrlP
noremap <S-F6> :w:CodeForcesUserSubmissions
noremap <S-F5> :w:CodeForcesSubmit
snoremap <C-R> "_c
snoremap <silent> <C-H> "_c
snoremap <silent> <Del> "_c
snoremap <silent> <BS> "_c
snoremap <silent> <C-Tab> :call UltiSnips#ListSnippets()
map <S-F8> :NextInBlock
map <S-F9> :PrevInBlock
map <C-N> :NERDTreeToggle
nnoremap <C-Right> :vertical resize -2
nnoremap <C-Left> :vertical resize +2
nnoremap <C-Down> :resize -2
nnoremap <C-Up> :resize +2 
inoremap <silent> 	 =UltiSnips#ExpandSnippet()
inoremap <silent> <expr> " coc#_insert_key('request', 'iIg==0')
inoremap <silent> <expr> ' coc#_insert_key('request', 'iJw==0')
inoremap <silent> <expr> ( coc#_insert_key('request', 'iKA==0')
inoremap <silent> <expr> ) coc#_insert_key('request', 'iKQ==0')
inoremap <silent> <expr> < coc#_insert_key('request', 'iPA==0')
inoremap <silent> <expr> > coc#_insert_key('request', 'iPg==0')
inoremap <silent> <expr> [ coc#_insert_key('request', 'iWw==0')
inoremap <silent> <expr> ] coc#_insert_key('request', 'iXQ==0')
inoremap <silent> <expr> ` coc#_insert_key('request', 'iYA==0')
imap ii 
inoremap <silent> <expr> { coc#_insert_key('request', 'iew==0')
inoremap <silent> <expr> } coc#_insert_key('request', 'ifQ==0')
let &cpo=s:cpo_save
unlet s:cpo_save
set background=dark
set backspace=indent,eol,start
set fileencodings=ucs-bom,utf-8,default,latin1
set helplang=en
set ignorecase
set incsearch
set laststatus=2
set nomodeline
set printoptions=paper:a4
set ruler
set runtimepath=~/.config/coc/extensions/node_modules/coc-fzf-preview,~/.vim,~/.vim/plugged/onehalf/vim,~/.vim/plugged/nerdtree,~/.vim/plugged/syntastic,~/.vim/plugged/indentLine,~/.vim/plugged/nerdtree-git-plugin,~/.vim/plugged/vim-nerdtree-syntax-highlight,~/.vim/plugged/vim-wakatime,~/.vim/plugged/vim-airline,~/.vim/plugged/supertab,~/.vim/plugged/rainbow_parentheses.vim,~/.vim/plugged/cppcomplete,~/.vim/plugged/ultisnips,~/.vim/plugged/vim-devicons,~/.vim/plugged/codeforces.vim,~/.vim/plugged/vim-color-forest-night,~/.vim/plugged/ayu-vim,~/.vim/plugged/vim-nerdtree-tabs,~/.vim/plugged/ctrlp.vim,~/.vim/plugged/vim-minimap,~/.vim/plugged/vim-gitgutter,~/.vim/plugged/vim-airline-themes,~/.vim/plugged/coc.nvim,/var/lib/vim/addons,/etc/vim,/usr/share/vim/vimfiles,/usr/share/vim/vim81,/usr/share/vim/vimfiles/after,/etc/vim/after,/var/lib/vim/addons/after,~/.vim/plugged/indentLine/after,~/.vim/plugged/nerdtree-git-plugin/after,~/.vim/plugged/vim-nerdtree-syntax-highlight/after,~/.vim/plugged/ultisnips/after,~/.vim/after,~/.config/coc/extensions/node_modules/coc-explorer
set showtabline=2
set smartcase
set smartindent
set suffixes=.bak,~,.swp,.o,.info,.aux,.log,.dvi,.bbl,.blg,.brf,.cb,.ind,.idx,.ilg,.inx,.out,.toc
set tabline=%!airline#extensions#tabline#get()
let s:so_save = &so | let s:siso_save = &siso | set so=0 siso=0
let v:this_session=expand("<sfile>:p")
silent only
silent tabonly
cd ~/
if expand('%') == '' && !&modified && line('$') <= 1 && getline(1) == ''
  let s:wipebuf = bufnr('%')
endif
set shortmess=aoO
argglobal
%argdel
$argadd .vimrc
edit .vimrc
set splitbelow splitright
set nosplitbelow
set nosplitright
wincmd t
set winminheight=0
set winheight=1
set winminwidth=0
set winwidth=1
argglobal
let s:cpo_save=&cpo
set cpo&vim
nmap <buffer> [c <Plug>(GitGutterPrevHunk)
vnoremap <buffer> <silent> [" :exe "normal! gv"|call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
nnoremap <buffer> <silent> [" :call search('\%(^\s*".*\n\)\%(^\s*"\)\@!', "bW")
vnoremap <buffer> <silent> [] m':exe "normal! gv"|call search('^\s*endf\%[unction]\>', "bW")
nnoremap <buffer> <silent> [] m':call search('^\s*endf\%[unction]\>', "bW")
vnoremap <buffer> <silent> [[ m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "bW")
nnoremap <buffer> <silent> [[ m':call search('^\s*fu\%[nction]\>', "bW")
nmap <buffer> \hp <Plug>(GitGutterPreviewHunk)
nmap <buffer> \hu <Plug>(GitGutterUndoHunk)
nmap <buffer> \hs <Plug>(GitGutterStageHunk)
xmap <buffer> \hs <Plug>(GitGutterStageHunk)
nmap <buffer> ]c <Plug>(GitGutterNextHunk)
vnoremap <buffer> <silent> ]" :exe "normal! gv"|call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
nnoremap <buffer> <silent> ]" :call search('^\(\s*".*\n\)\@<!\(\s*"\)', "W")
vnoremap <buffer> <silent> ][ m':exe "normal! gv"|call search('^\s*endf\%[unction]\>', "W")
nnoremap <buffer> <silent> ][ m':call search('^\s*endf\%[unction]\>', "W")
vnoremap <buffer> <silent> ]] m':exe "normal! gv"|call search('^\s*fu\%[nction]\>', "W")
nnoremap <buffer> <silent> ]] m':call search('^\s*fu\%[nction]\>', "W")
xmap <buffer> ac <Plug>(GitGutterTextObjectOuterVisual)
omap <buffer> ac <Plug>(GitGutterTextObjectOuterPending)
xmap <buffer> ic <Plug>(GitGutterTextObjectInnerVisual)
omap <buffer> ic <Plug>(GitGutterTextObjectInnerPending)
let &cpo=s:cpo_save
unlet s:cpo_save
setlocal keymap=
setlocal noarabic
setlocal noautoindent
setlocal backupcopy=
setlocal balloonexpr=
setlocal nobinary
setlocal nobreakindent
setlocal breakindentopt=
setlocal bufhidden=
setlocal buflisted
setlocal buftype=
setlocal nocindent
setlocal cinkeys=0{,0},0),0],:,0#,!^F,o,O,e
setlocal cinoptions=
setlocal cinwords=if,else,while,do,for,switch
setlocal colorcolumn=
setlocal comments=sO:\"\ -,mO:\"\ \ ,eO:\"\",:\"
setlocal commentstring=\"%s
setlocal complete=.,w,b,u,t,i
setlocal concealcursor=inc
setlocal conceallevel=2
setlocal completefunc=
setlocal nocopyindent
setlocal cryptmethod=
setlocal nocursorbind
setlocal nocursorcolumn
set cursorline
setlocal cursorline
setlocal cursorlineopt=both
setlocal define=
setlocal dictionary=
setlocal nodiff
setlocal equalprg=
setlocal errorformat=
setlocal noexpandtab
if &filetype != 'vim'
setlocal filetype=vim
endif
setlocal fixendofline
setlocal foldcolumn=0
setlocal foldenable
setlocal foldexpr=0
setlocal foldignore=#
setlocal foldlevel=0
setlocal foldmarker={{{,}}}
setlocal foldmethod=manual
setlocal foldminlines=1
setlocal foldnestmax=20
setlocal foldtext=foldtext()
setlocal formatexpr=
setlocal formatoptions=croql
setlocal formatlistpat=^\\s*\\d\\+[\\]:.)}\\t\ ]\\s*
setlocal formatprg=
setlocal grepprg=
setlocal iminsert=0
setlocal imsearch=-1
setlocal include=
setlocal includeexpr=
setlocal indentexpr=GetVimIndent()
setlocal indentkeys=0{,0},0),0],:,0#,!^F,o,O,e,=end,=else,=cat,=fina,=END,0\\,0=\"\\\ 
setlocal noinfercase
setlocal iskeyword=@,48-57,_,192-255,#
setlocal keywordprg=:help
set linebreak
setlocal linebreak
setlocal nolisp
setlocal lispwords=
setlocal nolist
setlocal makeencoding=
setlocal makeprg=
setlocal matchpairs=(:),{:},[:]
setlocal nomodeline
setlocal modifiable
setlocal nrformats=bin,octal,hex
set number
setlocal number
setlocal numberwidth=4
setlocal omnifunc=
setlocal path=
setlocal nopreserveindent
setlocal nopreviewwindow
setlocal quoteescape=\\
setlocal noreadonly
set relativenumber
setlocal relativenumber
setlocal norightleft
setlocal rightleftcmd=search
setlocal noscrollbind
setlocal scrolloff=-1
setlocal shiftwidth=8
setlocal noshortname
setlocal sidescrolloff=-1
setlocal signcolumn=auto
setlocal smartindent
setlocal softtabstop=0
setlocal nospell
setlocal spellcapcheck=[.?!]\\_[\\])'\"\	\ ]\\+
setlocal spellfile=
setlocal spelllang=en
setlocal statusline=%!airline#statusline(1)
setlocal suffixesadd=
setlocal swapfile
setlocal synmaxcol=3000
if &syntax != 'vim'
setlocal syntax=vim
endif
setlocal tabstop=8
setlocal tagcase=
setlocal tagfunc=
setlocal tags=
setlocal termwinkey=
setlocal termwinscroll=10000
setlocal termwinsize=
setlocal textwidth=78
setlocal thesaurus=
setlocal noundofile
setlocal undolevels=-123456
setlocal varsofttabstop=
setlocal vartabstop=
setlocal wincolor=
setlocal nowinfixheight
setlocal nowinfixwidth
set nowrap
setlocal nowrap
setlocal wrapmargin=0
silent! normal! zE
let s:l = 119 - ((42 * winheight(0) + 21) / 43)
if s:l < 1 | let s:l = 1 | endif
exe s:l
normal! zt
119
normal! 0
tabnext 1
badd +0 .vimrc
if exists('s:wipebuf') && len(win_findbuf(s:wipebuf)) == 0
  silent exe 'bwipe ' . s:wipebuf
endif
unlet! s:wipebuf
set winheight=1 winwidth=20 shortmess=filnxtToOS
set winminheight=1 winminwidth=1
let s:sx = expand("<sfile>:p:r")."x.vim"
if file_readable(s:sx)
  exe "source " . fnameescape(s:sx)
endif
let &so = s:so_save | let &siso = s:siso_save
nohlsearch
doautoall SessionLoadPost
unlet SessionLoad
" vim: set ft=vim :
