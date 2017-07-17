Welcome to world of YCM
===================
YCM是一个基于语义的补全的插件，它至少有三大特性：
1.高速补全
2.支持随键补全
3.支持模糊搜索
号称"补全界的神器"
缺点：
    基于libclang生成的语义树, 因此对机器的性能有挑战， 特别是内存

[ycm官方文档入口](https://github.com/Valloric/YouCompleteMe#intro)
[点击此处查看ycm视觉效果图](https://camo.githubusercontent.com/1f3f922431d5363224b20e99467ff28b04e810e2/687474703a2f2f692e696d6775722e636f6d2f304f50346f6f642e676966)

----------
安装配置
-------------
检查vim的版本：YCM要求vim版本为73.584以上,且支持python2
> **Note:**

> - 查看已安装vim版本：#vim --version
> - 查看是否支持python2: 进入vim， 执行:echo has('python')。 输出为1,则表示支持。如果为0,则需要重新编译安装vim，在编译时添加python支持。
> - Clearing your browser's data may **delete all your local documents!** Make sure your documents are synchronized with **Google Drive** or **Dropbox** (check out the [<i class="icon-refresh"></i> Synchronization](#synchronization) section).

#### <i class="icon-file"></i> 下载ycm
通过Vundle或者Pathongen，官网上推荐用Vundle；此处通过Vundle安装YCM的方法：

   #vim  ~/.vimrc
   Bundle 'Valloric/YouCompleteMe'  
   
之后退出.vimrc, 在打开vim运行：
BundleInstall 
这里Vundle可能会运行比较久；【ps：可考虑使用代理来进行同步】
之后在你的Vundle文件下就有会YouCompleteMe文件夹了。
#### <i class="icon-file"></i> 下载llvm-clang 【不需要ycm支持C/C++语义补全】
下载llvm-clange3.3+源码

 
    mkdir ~/ycm_tmp
    wget  http://releases.llvm.org/3.3/clang+llvm-3.3-x86_64-fedora18.tar.bz2 -O ~/ycm_tmp/clang+llvm-3.3-x86_64-fedora18.tar.bz2 
    cd ~/ycm_tmp && tar -xf clang+llvm-3.3-x86_64-fedora18.tar.bz2
   
【ps：这里直接下载官方的库文件，当然也可以自行编译】
### <i class="icon-pencil"></i> 编译ycm

\#采用cmake外部联编方式

    cd ~/ycm_build

    cmake -G "Unix Makefiles" -DUSE_SYSTEM_LIBclang=ON -DEXTERNAL_LIBCLANG_PATH=CLANG_INSTALL_PATH/libclang.so  ~/.vim/bundle/YouCompleteMe/cpp
　
注意：这里的CLANG_INSTALL_PATH要替换成自己libclang.so所在的目录，例如 /ycm_temp/llvmsrc/build/Release+Asserts/lib（即：上面步骤的编译llvm-clang所生成的），如果安装了的话在/usr/local/lib/下也有libclang.so,这个目录也可以。可以通过sudo find / -name "libclang.so" -print查看

在YouCompleteMe中生成libclang.so和ycm_core.so文件 
执行 make ycm_core，这样将在~/.vim/bundle/YouCompleteMe/python/目录下自动生成两个文件(libclang.so和ycm_core.so)

执行命令：make ycm_support_libs， 这条命令才会生成第三个文件ycm_client_support.so。因为YouCompleteMe是C/S架构的

#### <i class="icon-hdd"></i>配置.ycm_extra_conf.py文件
1、配置.vimrc文件：

    let g:ycm_global_ycm_extra_conf='~/.ycm_extra_conf.py'

按上述的配置还不能对C++系统库文件智能补充，还需要在.ycm_extra_conf.py文件中的flags中添加C++头文件索引．

    '-isystem',
    '/usr/include/c++/4.8.2'

----------

.vimrc配置
-------------------

 自动补全配置
set completeopt=longest,menu    "让Vim的补全菜单行为与一般IDE一致(参考VimTip1228)
autocmd InsertLeave * if == 0|pclose|endif  "离开插入模式后自动关闭预览窗口
inoremap <expr> <CR>       ? "\<C-y>" : "\<CR>" "回车即选中当前项
"上下左右键的行为 会显示其他信息
inoremap <expr> <Down>     ? "\<C-n>" : "\<Down>"
inoremap <expr> <Up>       ? "\<C-p>" : "\<Up>"
inoremap <expr> <PageDown> ? "\<PageDown>\<C-p>\<C-n>" : "\<PageDown>"
inoremap <expr> <PageUp>   ? "\<PageUp>\<C-p>\<C-n>" : "\<PageUp>"

"youcompleteme  默认tab  s-tab 和自动补全冲突
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
"在注释输入中也能补全
let g:ycm_complete_in_comments = 1
"在字符串输入中也能补全
let g:ycm_complete_in_strings = 1
"注释和字符串中的文字也会被收入补全
let g:ycm_collect_identifiers_from_comments_and_strings = 0
nnoremap <leader>jd :YcmCompleter GoToDefinitionElseDeclaration<CR> " 跳转到定义处
