set nocompatible

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

" 配置自动加载ctags文件
set tags=./.tags;,.tags,tags

" vim-gutentags
" gutentags 搜索工程目录的标志，碰到这些文件/目录名就停止向上一级目录递归
let g:gutentags_project_root = ['.root', '.svn', '.git', '.hg', '.project']
" 所生成的数据文件的名称
let g:gutentags_ctags_tagfile = '.tags'
" 将自动生成的 tags 文件全部放入 ~/.cache/tags 目录中，避免污染工程目录
let s:vim_tags = expand('~/.cache/tags')
let g:gutentags_cache_dir = s:vim_tags
" 配置 ctags 的参数
let g:gutentags_ctags_extra_args = ['--fields=+niazS', '--extra=+q']
let g:gutentags_ctags_extra_args += ['--c++-kinds=+px']
let g:gutentags_ctags_extra_args += ['--c-kinds=+px']
" 检测 ~/.cache/tags 不存在就新建
if !isdirectory(s:vim_tags)
   silent! call mkdir(s:vim_tags, 'p')
endif

" don't show the help in normal mode
let g:Lf_HideHelp = 1
let g:Lf_UseCache = 0
let g:Lf_UseVersionControlTool = 0
let g:Lf_IgnoreCurrentBufferName = 1
" popup mode
let g:Lf_WindowPosition = 'popup'
let g:Lf_PreviewInPopup = 1
let g:Lf_PreviewResult = {'Function': 1, 'BufTag': 0 }
let g:Lf_ShowDevIcons = 0
let g:Lf_ShortcutF = '<C-P>'

