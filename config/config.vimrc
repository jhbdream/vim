set nocompatible

set encoding=utf-8
set cursorline
highlight CursorLine   cterm=NONE ctermbg=black  guibg=NONE guifg=NONE
highlight CursorColumn cterm=NONE ctermbg=black  guibg=NONE guifg=NONE
autocmd InsertLeave,WinEnter * set cursorline
autocmd InsertEnter,WinLeave * set nocursorline

" 为显示lightline设置
set laststatus=2

" 状态栏下面不在单独显示模式
set noshowmode

" 配置lightline主题
let g:lightline = {
      \ 'colorscheme': 'one',
      \ }

" echodoc
" Or, you could use vim's popup window feature.
let g:echodoc#enable_at_startup = 1
let g:echodoc#type = 'popup'
" To use a custom highlight for the popup window,
" change Pmenu to your highlight group
highlight link EchoDocPopup Pmenu

" LeaderF
" 设置弹出窗口位置浮空
let g:Lf_WindowPosition = 'popup'
" 设置忽略文件
let g:Lf_WildIgnore = {
       \ 'dir': ['.svn','.git','.hg'],
       \ 'file': ['*.sw?','~$*','*.bak','*.exe','*.d','*.o','*.so','*.py[co]']
       \}

let g:Lf_HideHelp = 1
let g:Lf_GtagsAutoGenerate = 0
" Show icons, icons are shown by default
let g:Lf_ShowDevIcons = 0

" 文件查找快捷键
let g:Lf_ShortcutF = '<C-P>'
noremap <leader>fb :<C-U><C-R>=printf("Leaderf buffer %s", "")<CR><CR>
noremap <leader>fm :<C-U><C-R>=printf("Leaderf mru %s", "")<CR><CR>
noremap <leader>fl :<C-U><C-R>=printf("Leaderf line %s", "")<CR><CR>
noremap <C-B> :<C-U><C-R>=printf("Leaderf! rg --current-buffer -e %s ", expand("<cword>"))<CR><CR>
noremap <C-F> :<C-U><C-R>=printf("Leaderf! rg -e %s ", expand("<cword>"))<CR><CR>

" Ycm
let g:ycm_show_diagnostics_ui = 0
set completeopt=menu,menuone

" nerdtree
nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

" vim-gutentags
set tags=./.tags;,.tags
" gutentags 搜索工程目录的标志，当前文件路径向上递归直到碰到这些文件/目录名
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']

" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'

" 同时开启 ctags 和 gtags 支持：
let g:gutentags_modules = []
if executable('ctags')
	let g:gutentags_modules += ['ctags']
endif
if executable('gtags-cscope') && executable('gtags')
	let g:gutentags_modules += ['gtags_cscope']
endif

" 将自动生成的 ctags/gtags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let g:gutentags_cache_dir = expand('~/.cache/tags')

" 配置 ctags 的参数，老的 Exuberant-ctags 不能有 --extra=+q，注意
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']

" 如果使用 universal ctags 需要增加下面一行，老的 Exuberant-ctags 不能加下一行
let g:gutentags_ctags_extra_args += ['--output-format=e-ctags']

" 禁用 gutentags 自动加载 gtags 数据库的行为
let g:gutentags_auto_add_gtags_cscope = 0
