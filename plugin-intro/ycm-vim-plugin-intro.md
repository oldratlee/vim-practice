# Welcome to world of `YCM`

`YCM`是一个基于语义的补全的插件，号称『补全界的神器』。

- 至少有三大特性：
    1. 高速补全
    1. 支持随键补全
    1. 支持模糊搜索
- 缺点：
    1. 基于`libclang`生成的语义树，因此对机器的性能有挑战，特别是内存。

[`YCM`官方文档入口](https://github.com/Valloric/YouCompleteMe#intro)。

`YCM`视觉效果图：  
![YCM视觉效果图](ycm-preview.gif)

----------------------------------------

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [安装](#%E5%AE%89%E8%A3%85)
    - [下载`YCM`](#%E4%B8%8B%E8%BD%BDycm)
    - [下载`llvm-clang`【不需要`YCM`支持`C/C++`语义补全】](#%E4%B8%8B%E8%BD%BDllvm-clang%E4%B8%8D%E9%9C%80%E8%A6%81ycm%E6%94%AF%E6%8C%81cc%E8%AF%AD%E4%B9%89%E8%A1%A5%E5%85%A8)
    - [编译`YCM`](#%E7%BC%96%E8%AF%91ycm)
- [配置](#%E9%85%8D%E7%BD%AE)
    - [配置`.ycm_extra_conf.py`文件](#%E9%85%8D%E7%BD%AEycm_extra_confpy%E6%96%87%E4%BB%B6)
    - [`.vimrc`配置](#vimrc%E9%85%8D%E7%BD%AE)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

----------------------------------------

# 安装

检查`Vim`的版本：`YCM`要求`Vim`版本为`73.584`以上，且支持`Python 2`。

**注意：**

- 查看已安装`Vim`版本：`$ vim --version`
- 查看是否支持`Python 2`: 进入`Vim`， 执行`:echo has('python')`。输出为`1`，则表示支持。如果为`0`,则需要重新编译安装`Vim`，在编译时添加`Python 2`支持。
- Clearing your browser's data may **delete all your local documents!** Make sure your documents are synchronized with **Google Drive** or **Dropbox** (check out the [Synchronization](#synchronization) section).

## 下载`YCM`

通过`Vundle`或者`Pathongen`，官网上推荐用`Vundle`；此处通过`Vundle`安装`YCM`的方法：

```bash
$ vim  ~/.vimrc
Bundle 'Valloric/YouCompleteMe'
```

之后退出`.vimrc`，在打开`Vim`运行：

```vim
BundleInstall
```

这里`Vundle`可能会运行比较久（PS：可考虑使用代理来进行同步），之后在你的`Vundle`文件下就有会`YouCompleteMe`文件夹了。

## 下载`llvm-clang`【不需要`YCM`支持`C/C++`语义补全】

下载`llvm-clange3.3+`源码

```bash
mkdir ~/ycm_tmp
wget  http://releases.llvm.org/3.3/clang+llvm-3.3-x86_64-fedora18.tar.bz2 -O ~/ycm_tmp/clang+llvm-3.3-x86_64-fedora18.tar.bz2
cd ~/ycm_tmp && tar -xf clang+llvm-3.3-x86_64-fedora18.tar.bz2
```

【PS：这里直接下载官方的库文件，当然也可以自行编译】

## 编译`YCM`

采用`cmake`外部联编方式：

```bash
cd ~/ycm_build

cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBclang=ON -DEXTERNAL_LIBCLANG_PATH=CLANG_INSTALL_PATH/libclang.so  ~/.vim/bundle/YouCompleteMe/cpp
```

注意：这里的`CLANG_INSTALL_PATH`要替换成自己`libclang.so`所在的目录，例如`/ycm_temp/llvmsrc/build/Release+Asserts/lib`（即：上面步骤的编译`llvm-clang`所生成的），如果安装了的话在`/usr/local/lib/`下也有`libclang.so`，这个目录也可以。可以通过`sudo find / -name "libclang.so" -print`查看。

在`YouCompleteMe`中生成`libclang.so`和`ycm_core.so`文件，执行`make ycm_core`，这样将在`~/.vim/bundle/YouCompleteMe/python/`目录下自动生成两个文件(`libclang.so`和`ycm_core.so`)。

执行命令：`make ycm_support_libs`，这条命令才会生成第三个文件`ycm_client_support.so`。因为`YouCompleteMe`是`C/S`架构的。

# 配置

## 配置`.ycm_extra_conf.py`文件

1、配置`.vimrc`文件：

```vim
let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'
```

按上述的配置还不能对`C++`系统库文件智能补充，还需要在`.ycm_extra_conf.py`文件中的`flags`中添加`C++`头文件索引。

```bash
'-isystem',
'/usr/include/c++/4.8.2'
```

## `.vimrc`配置

自动补全配置

```vim
" 让Vim的补全菜单行为与一般IDE一致（参考VimTip1228）
set completeopt=longest,menu

" 离开插入模式后自动关闭预览窗口
autocmd InsertLeave * if == 0|pclose|endif

" 回车即选中当前项
inoremap <expr> <CR>       ? "\<C-y>" : "\<CR>" 

" 上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

" youcompleteme  默认tab  s-tab 和自动补全冲突
"let g:ycm_key_list_select_completion=['<c-n>']
let g:ycm_key_list_select_completion = ['<Down>']
"let g:ycm_key_list_previous_completion=['<c-p>']
let g:ycm_key_list_previous_completion = ['<Up>']
let g:ycm_confirm_extra_conf=0 "关闭加载.ycm_extra_conf.py提示

let g:ycm_collect_identifiers_from_tags_files=1 " 开启 YCM 基于标签引擎
let g:ycm_min_num_of_chars_for_completion=2 " 从第2个键入字符就开始罗列匹配项
let g:ycm_cache_omnifunc=0  " 禁止缓存匹配项,每次都重新生成匹配项
let g:ycm_seed_identifiers_with_syntax=1    " 语法关键字补全
nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>    "force recomile with syntastic

"nnoremap <leader>lo :lopen<CR> "open locationlist
"nnoremap <leader>lc :lclose<CR>    "close locationlist
inoremap <leader><leader> <C-x><C-o>

" 在注释输入中也能补全
let g:ycm_complete_in_comments = 1
" 在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
" 注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0

nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
```
