原文链接： [程序员的编辑器——VIM](http://arch.pconline.com.cn//pcedu/soft/gj/photo/0609/877033.html) by @_dieken_

程序员的编辑器 —— `Vim`
============================================

> 编者按：本文详细介绍了`Vim`的历史、基本知识等，并介绍了作者作为一个程序员经常用到的一些相关资源。同时包含了大量的参考文献，适合想深入了解`Vim`的读者。

如果您从未接触过`Vim`，推荐先看看`Vim`的中文帮助文档和_xbeta_的[《普通人的编辑利器——`Vim`》](http://blog.sina.com.cn/s/blog_46dac66f010005kw.html)。

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [一、`Vim`的历史](#%E4%B8%80%E3%80%81vim%E7%9A%84%E5%8E%86%E5%8F%B2)
    - [1. `ed`](#1-ed)
    - [2. `ex`](#2-ex)
    - [3. `vi`](#3-vi)
    - [4. `Vim`](#4-vim)
- [二、`vi`/`Vim`基础知识](#%E4%BA%8C%E3%80%81vivim%E5%9F%BA%E7%A1%80%E7%9F%A5%E8%AF%86)
    - [(a) 将“`(1), ...., (2), ....,(100)`”替换成“`(2), ...., (3), ...., (101)`”](#a-%E5%B0%86%E2%80%9C1--2-100%E2%80%9D%E6%9B%BF%E6%8D%A2%E6%88%90%E2%80%9C2--3--101%E2%80%9D)
    - [(b) 重新连接`log`系统的断行](#b-%E9%87%8D%E6%96%B0%E8%BF%9E%E6%8E%A5log%E7%B3%BB%E7%BB%9F%E7%9A%84%E6%96%AD%E8%A1%8C)
    - [(c) `Fortran`代码对齐](#c-fortran%E4%BB%A3%E7%A0%81%E5%AF%B9%E9%BD%90)
    - [(d) 连续插入72个等号](#d-%E8%BF%9E%E7%BB%AD%E6%8F%92%E5%85%A572%E4%B8%AA%E7%AD%89%E5%8F%B7)
    - [(e) 在多行开始插入`//`](#e-%E5%9C%A8%E5%A4%9A%E8%A1%8C%E5%BC%80%E5%A7%8B%E6%8F%92%E5%85%A5)
- [三、编程辅助](#%E4%B8%89%E3%80%81%E7%BC%96%E7%A8%8B%E8%BE%85%E5%8A%A9)
    - [（1） `ctags`，`cscope`](#%EF%BC%881%EF%BC%89-ctags%EF%BC%8Ccscope)
    - [（2）`multi window`，`multi buffer`，`multi tab page`](#%EF%BC%882%EF%BC%89multi-window%EF%BC%8Cmulti-buffer%EF%BC%8Cmulti-tab-page)
    - [（3） 语法高亮](#%EF%BC%883%EF%BC%89-%E8%AF%AD%E6%B3%95%E9%AB%98%E4%BA%AE)
    - [（4） 自动缩进](#%EF%BC%884%EF%BC%89-%E8%87%AA%E5%8A%A8%E7%BC%A9%E8%BF%9B)
    - [（5） 类和函数列表](#%EF%BC%885%EF%BC%89-%E7%B1%BB%E5%92%8C%E5%87%BD%E6%95%B0%E5%88%97%E8%A1%A8)
    - [（6） 自动完成](#%EF%BC%886%EF%BC%89-%E8%87%AA%E5%8A%A8%E5%AE%8C%E6%88%90)
    - [（7） `folding`](#%EF%BC%887%EF%BC%89-folding)
    - [（8） `quickfix`](#%EF%BC%888%EF%BC%89-quickfix)
    - [（9）`auto command`](#%EF%BC%889%EF%BC%89auto-command)
    - [（10）mode line](#%EF%BC%8810%EF%BC%89mode-line)
- [四、强大方便的帮助系统](#%E5%9B%9B%E3%80%81%E5%BC%BA%E5%A4%A7%E6%96%B9%E4%BE%BF%E7%9A%84%E5%B8%AE%E5%8A%A9%E7%B3%BB%E7%BB%9F)
- [五、其它高级功能](#%E4%BA%94%E3%80%81%E5%85%B6%E5%AE%83%E9%AB%98%E7%BA%A7%E5%8A%9F%E8%83%BD)
    - [（1）寄存器](#%EF%BC%881%EF%BC%89%E5%AF%84%E5%AD%98%E5%99%A8)
    - [（2） 宏](#%EF%BC%882%EF%BC%89-%E5%AE%8F)
    - [（3） 书签](#%EF%BC%883%EF%BC%89-%E4%B9%A6%E7%AD%BE)
    - [（4） 映射](#%EF%BC%884%EF%BC%89-%E6%98%A0%E5%B0%84)
    - [（5） 缩写](#%EF%BC%885%EF%BC%89-%E7%BC%A9%E5%86%99)
    - [（6） `:s//`和`:g//，:!g//`](#%EF%BC%886%EF%BC%89-s%E5%92%8Cg%EF%BC%8Cg)
    - [（8） color scheme](#%EF%BC%888%EF%BC%89-color-scheme)
    - [（9） 二进制编辑](#%EF%BC%889%EF%BC%89-%E4%BA%8C%E8%BF%9B%E5%88%B6%E7%BC%96%E8%BE%91)
    - [（10） sign](#%EF%BC%8810%EF%BC%89-sign)
- [六、`Vim Scripts`](#%E5%85%AD%E3%80%81vim-scripts)
- [七、`Vim`资源](#%E4%B8%83%E3%80%81vim%E8%B5%84%E6%BA%90)
- [八、编译安装最新`CVS`版的`Vim`](#%E5%85%AB%E3%80%81%E7%BC%96%E8%AF%91%E5%AE%89%E8%A3%85%E6%9C%80%E6%96%B0cvs%E7%89%88%E7%9A%84vim)
- [九、一份`vimrc`配置文件](#%E4%B9%9D%E3%80%81%E4%B8%80%E4%BB%BDvimrc%E9%85%8D%E7%BD%AE%E6%96%87%E4%BB%B6)
- [十、`Vim`的不足](#%E5%8D%81%E3%80%81vim%E7%9A%84%E4%B8%8D%E8%B6%B3)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

一、`Vim`的历史
---------------------------

### 1. `ed`

`ed`是`UNIX`上最古老最基本的编辑器，它最初是`UNIX`之父_Ken Thompson_编写的，他第一次在`ed`中应用了正则表达式（`regular expression`），这个创举将`RE`理论带入了实践，对`UNIX`界造成了深远的影响。 实际上`ed`是受来自加州伯克利大学的`QED`编辑器的影响，_Ken_ 便是从这所院校这里毕业的。

`ed`是一种行模式编辑器，下面是一个`ed`会话的例子：

```bash
$ ed greeting
0   # 因为新创建文件，所以读入了0个字节
a   # 进入编辑模式（append）
hello world, eveyone. # 输入一行文本
.   # 回到命令模式
1p  # 显示（print）第一行
hello world, eveyone.
1c  # 最后一个词写错了，修改（change）第一行
hello world, everyone.
.   # 回到命令模式
1p  # 重新显示第一行，这回发现无误
hello world, everyone.
q   # 退出（quit）
?   # ?表示没有保存或者命令不认识
w   # 保存（write）
23  # 提示写了23个字节
q   # 退出
```

也许大家觉得这个编辑器很难用，可是在70年代，许多使用`UNIX`的人都是用廉价的终端机通过电话线连到`UNIX`服务器上的，因为传输速率慢，所以这种简洁的行模式编辑就很有意义，现在虽然硬件有了长足的发展，`ed`编辑器很少有人用了，但是它的很多理念比如命令字符、正则表达式却在它的很多后辈身上体现出来。下面这个网址有一些`ed`的笑话，从中大家或多或少能体会到那个时代人们的某种精神。

- http://www.gnu.org/fun/jokes/ed.msg.html
- `GNU ed`:  http://www.gnu.org/software/ed/ed.html
- Reference: http://en.wikipedia.org/wiki/ed
- http://snap.nlc.dcccd.edu/learn/nlc/ed.html
- http://cm.bell-labs.com/cm/cs/who/dmr/qed.html
- http://www.answers.com/topic/ken-thompson

### 2. `ex`

`ex`是`ed`的扩展，实际上`vi`构建在`ex`之上，`vi`引入了大家所熟悉的全屏编辑模式。

### 3. `vi`

随着硬件的发展，`UNIX`上许多全屏模式编辑器被开发出来，`pico`，`nano`，`joe`，`jed`，`jove`，但是最为广泛使用的无疑就是`vi`（`nvi`，`elvis`，`Vim`等）和`Emacs`（`GNU Emacs`，`XEmacs`等）。

1976年左右_Bill Joy_开发了`vi`，他也是伯克利大学的毕业生，后来他跟其他人一起成立了`Sun Microsystems`公司并成为了`Sun`的首席科学家。一开始_Bill_开发了`ex`，尔后开发了`vi`作为`ex`的`visual interface`，也就是说`vi`允许一次能看到一屏的文本而非一行，`vi`也因此得名。在当今的`UNIX`系统上，可能没有缺省安装`Emacs`，但是肯定会有`vi`，当然，`ed`编辑器也必定存在 :-)

下面引用《`Unix`技术大全——`Internet`卷》的一段文字：

“早期，当键盘和视频终端成为最新的计算机交互手段时，人们开发了`vi`。那时候的键盘不具有目前熟悉的全部功能键，所以，`vi`就设计成只需要打字机的键盘加上退出键就能完成对文本的输入和修改（现在有的还接受一些其他的键输入方式，如光标控制键）。尽管看起来受了限制，不能充分利用现代键盘新增的许多键，可是‘祸中有福’，限制带来的好处是手指不离开打字区就能完成所有的编辑工作。”

Reference（参考）：

- http://www.bellevuelinux.org/vi/history.html
- http://www.theregister.co.uk/2003/09/11/bill_joys_greatest_gift/

### 4. `Vim`

技术不断进步，需求也在不断提高，`vi`的各种变种也不断涌现，知名的有`nvi`，`elvis`，`Vim`，`vile`，`yzis`，其中移植性最好、特性最多、使用最广的当属`Vim`，`Vim`主要是_Bram Moolenaar_开发的。最初_Bram_在`Amiga`计算机上改进一个叫`Stevie`的`vi`版本，他称之为`Vi IMitation`。随着功能的逐渐丰富，`Vim`的含义也就改成了`Vi IMproved`。相比原始的`vi`，`Vim`增加的一项最重要的功能便是多级撤销，`vi`只支持一级撤销。

下面是`Vim`的重要版本历史：

date | version | milestone
---- | ------- | ---------
2005 | vim 7.0aa | spell checking，multi tabpage
2000 Jul 09 | vim 6.0a | folding (and more)
1998 Feb 19 | vim 5.0 | syntax coloring/highlighting
1996 May 29 | vim 4.0 | graphical user interface (robert webb).
1994 Aug 12 | vim 3.0 | support for multiple buffers and windows.
1992 | vim 1.22 | port to unix. vim now competes with vi. this was when vim became vi improved.
1991 Nov 2 | vim 1.14 | first release (on fred fish disk \#591).
1988 | vim 1.0 | vi imitation on the amiga

reference:

- _Learning the vi Editor，6th Edition_，O'Reilly
- http://www.vmunix.com/vim/hist.html
- http://www.vmunix.com/vim/
- http://www.vim.org
- `vim :help`
    - `:help vi_diff.txt`
    - `:help version4.txt`
    - `:help version5.txt`
    - `:help version6.txt`

二、`vi`/`Vim`基础知识
---------------------------------

很多人应该都知道`vi`是个有模式的编辑器：编辑模式和命令模式，按`ESC`回到命令模式，用`i`或者`a`进入编辑模式，由于区分了模式，导致`vi`的命令非常简洁，而无模式编辑器比如`Emacs`，所有的命令都需要加上控制键`Ctrl`或`Alt`，所以有个笑话说`Emacser`们最希望计算机备一个脚踏板，这样就可以用脚踩`Ctrl`和`Alt`键了（编辑器圣战——在`vi`和`Emacs`之间有很多口水战，自然也引出非常多的幽默），这里罗嗦一句`Vi vs. Emacs`： `vi`继承了`ed`的理念，另外也有历史原因，`vi`追求的是快捷——启动程序迅速，编辑文本高效，功能专注，而`Emacs`追求的是功能的丰富强大以及集成带来的方便，在`Emacs`里头可以发邮件，上新闻组，听`mp3`，浏览网页，玩游戏，几乎可以`login` -> `emacs` -> `logout`了 :-)，`vi`和`Emacs`都是程序员的编辑器，相比而言，`Emacs`更是提供了一种程序员的生活氛围。

闲话少说，这篇文档也不是一份`vi`/`Vim`教程，所以这一节只会简单的提及`vi`/`Vim`的基础知识。`Vim`引入了更多的模式，在`Vim`里头`:help mode`可以看到`Vim`的所有模式，主要有如下几种：

- `Normal Mode`  即通常所谓的命令模式，在此模式使用`a`、`i`、`A`、`I`、`o`、`O`等进入`Insert Mode`
- `Insert Mode`  即通常所谓的编辑模式，在此模式使用`ESC`进入`Normal Mode`或者`Ctrl-o`临时进入`Normal Mode`。
- `Command-line Mode` 命令行模式，在`Normal Mode`下按冒号进入，按`ESC`取消执行命令或者回车执行命令，然后回到`Normal Mode`。（`Visual Studio.Net`也添加了命令行脚本功能，幸甚）
- `Visual Mode`  即选择模式（注意跟用鼠标选择不同），用`v`，`V`，`C-v`或`C-q`进入
- `Select Mode`  鼠标选择
- `Replace Mode`  在`Normal Mode`下按`R`进入，按`ESC`返回`Normal Mode`，相当于`Windows`下命令行中按`Insert`键进入的覆盖模式

从`vi`/`Vim`中退出： 按`ESC`确认返回到`Normal Mode`，然后

- `:wq` 保存并退出
- `:q!` 不保存并退出
- `:x` 退出，如果文件更改则保存
- `ZZ` 退出，如果文件更改则保存（按住`Shift`，再按两次`z`）

`vi`的命令是非常具有美感的，下面是几个例子：

- `i` 在光标前插入 `I` 在行首插入
- `a` 在光标后插入 `A` 在行末插入
- `o` 在下一行插入 `O` 在上一行插入
- `x` 删除当前字符 `X` 删除前一个字符

类似的还有`b`，`B`，`ge`，`gE`，`w`，`W`，`e`，`E`，`f`，`F`，`t`，`T`，这些命令都可以用`:help cmdname`查到帮助。

- `dd` 删除一行 `yy` 拷贝一行
- `h` `j` `k` `l` 左下上右移动光标
- `Ctrl-w` `h`，`Ctrl-w` `j`，`Ctrl-w` `k`，`Ctrl-w` `l` 切换到左下上右窗口

类似`ed`，`vi`/`Vim`的命令大多都可以带一个数字前缀或者一个数字范围，比如：

- `5dd` 从当前行开始删除5行
- `5yy` 从当前行开始拷贝5行
- `1,3d` 删除1至3行
- `1,3y` 拷贝1至3行 （`.`代表当前行，`$`代表最后一行）

`d<motion>`，`y<motion>`，`c<motion>`，`v<motion>`分别代表删除/拷贝/修改/选择`<motion>`

命令指定的范围，比如

```c
int main(void)
{
    ......;
}
```

将光标放在`{`处，然后输入`v%`就可以把大括号中内容选定，然后按`=`就可以按照`C`语言格式缩排（`:help =`可以看到`=`命令的描述），`%`命令的作用是跳到匹配处，比如括号之间，`C`的宏指令`#if` `#else` `#endif`之间。

```c
int some_ugly_modifier and some_ugly_name (void)
```

如果光标放在第一个`s`上，想删除到“`(`”为止，则输入`dt(`就可以了，`t(`的作用是跳到下一个"`(`"前。

`dG`可以从当前位置一直删除到文件末尾，因为`G`的作用是跳到文件最后一行。

`Vim`的命令可以非常快捷的做到一些复杂的编辑操作，下面是几个示例：

### (a) 将“`(1), ...., (2), ....,(100)`”替换成“`(2), ...., (3), ...., (101)`”

在文本中一处处找到并修改是很累的，在`Vim`下一条命令就可以搞定：

`:%s/(\(\d+\))/\="(".(submatch(1)+1).")"/g`

命令解释如下：

命令串  | 含义
------  | -----
`%`     | 全文（“`%`”是“`1,$`”范围的缩写）
`s`     | 替换
`/`     | 搜索字符串开始
`(`     | 左括号
`\)`    | 开始记录匹配
`\d+`   | 一个或多个数字
`\)`    | 结束记录匹配
`)`     | 右括号
`/`     | 搜索字符串结束
`\=`    | 把后面的表达式计算出来作为替换字符串
`"("`   | 左括号
`.`     | 字符串连接运算符
`(submatch(1) + 1)`     | 把第一个匹配的结果加一作为一个整体返回
`.")"`  | 添上右括号
`/g`    | 替换字符串结束，`g`表示替换每一行的所有匹配结果。

### (b) 重新连接`log`系统的断行

这个问题是笔者曾经碰到的，有一个`log`系统对于输出行长度有限制，因此在输出很长的`log`时需要断行，在断行时以单行的“`-$-`”标记，现在的需求是把这些行连起来，在`Vim`中也可以很方便的做到（_edyfox at newsmth_指点）：

`:%s/\n-\$-\n//g`

命令的含义就是把“换行`-$-`换行”替换成空，另一个办法是：

`:g/-\$-/norm ddkJx`

命令`g/-\$-/`的含义就是找到所有的断行标记，然后`norm`表示在找到的每一个行上执行后面的命令，`dd`删除这个断行标记，`k`移动到上一行，`J`合并当前行和下一行，由于`J`合并后会留一个空格（只对于英文情况下），所以`x`来删除这个空格。

### (c) `Fortran`代码对齐

在`Fortran`代码

```fortran
integer, dimension(:, :), allocatable ::  &
short_var, &
A_very_long_name_var, &
other
```

中，想把每行的`&`符号定位到固定的一列，比如第78列，手动对齐也是很麻烦的，这个问题可以用`Vim`的[`Align`插件](http://www.vim.org/scripts/script.php?script_id=294)解决，另外利用宏也可以：

命令串  | 含义
------  | -----
`:set ve=all`   | 使得光标可以定位到屏幕任何位置（缺省下`Vim`的光标只能放在行内的字符上）
`gg`            | 到文件第一行
`/\s\+&\s*$`    | 找以`&`结尾的行，`&`前至少一个空白字符，后0或多个空白字符
`qa`            | 记录宏到寄存器`a`
`D`             | 删除到行尾
`78|`           | 定位到第78列
`i&<ESC>`       | 插入`&`并返回到命令模式
`n`             | 查找下一个`&`
`q`             | 停止记录宏
`10000@a`       | 执行一万遍寄存器`a`中保存的命令
`:set ve=""`    | 恢复`ve`缺省值

### (d) 连续插入72个等号

按`ESC`进入`Normal Mode`，输入`72i=`再按`ESC`即可。

### (e) 在多行开始插入`//`

移动光标到需要注释掉的第一行开头，然后按`Ctrl-v`（如果使用了`Vim`的`mswin.vim`，则`Ctrl-v`表示粘贴，这时需要用`Ctrl-q`代替）进入`Visual blockwise`模式，这个模式是`Visual Mode`的一种，相当于`UltraEdit`中的块选择。 然后按j选择上所有需要注释行的行首（看起来效果是选择了第一列），输入`I//`再按`ESC`就可以在每一行开头插入`//`了。

Reference:

- http://newsmth.org Vim board
- http://edyfox.codecarver.org/html/index.html `edyfox`的个人主页

这些例子也许初看起来有点吓人，可是在很多时候`Vim`这些强大的命令能省不少力，`Vim`不愧是为“编辑”这个功能费尽心思。

三、编程辅助
-----------------------------

既然是程序员的编辑器，自然要show一下它的编程辅助功能。

### （1） `ctags`，`cscope`

现在的`IDE`都提供了类、函数的索引功能，可以方便的找到某个类或者函数的在哪里定义的，`Vim`这方面可以利用`ctags`、`cscope`做到，`Exuberant ctags`支持的语言种类非常多，`UltraEdit`的`tags`功能也是利用的`ctags`。`cscope`只支持`C`，它能实现`Source Insight`的一些功能，比如查找某个函数调用了哪些函数，某个函数被哪些函数调用。`Vim`对这两个工具集成的非常好，利用它们就可以在源文件中方便的跳转搜索类和函数了。

Reference:

- http://ctags.sourceforge.net `Exuberant ctags`
- http://iamphet.nm.ru/cscope/ `cscope for Win32`
- `:help ctags`
- `:help cscope`

### （2）`multi window`，`multi buffer`，`multi tab page`

一个`buffer`对应一个文件，它可以对应多个`window`，这样可以方便的对照编辑一个文件的不同部分，`tab page`跟现在许多编辑器上常见的标签页意义并不一样，可以将`tab page`理解为一个`windows`的容器，这样如果想新建一个窗口编辑文件但又不想打乱现在的多窗口布局，那么就可以新开一个`tab page`，把新窗口放到这个新的`tab page`里头。`tab page`是`Vim` 7.0不久前新增的特性，目前`Vim` 7.0还未正式发布。（此文发表至`PConline`时，已经正式发布。）

Reference:

- `:help windows`
- `:help buffers`
- `:help tabpage`

### （3） 语法高亮

`Vim`发行版里带了450多种语言的语法高亮，在其主页`vim.org`上还可以找到更多。

Reference:

- `:help syntax`

### （4） 自动缩进

在打开自动缩进选项后，`Vim`会自动的控制缩进，比如输入`{`自动向右缩进一个`tab`字符（具体用什么缩进可以配置），输入`}`自动回退缩进。 使用`=`命令可以对选择的程序块排版缩进，这对于整理代码非常有帮助。 另外对选择的块用`>>`和`<<`命令可以很方便的控制一个程序块的缩进。

Reference:

- `:help cindent`
- `:help autoindent`
- `:help smartindent`

### （5） 类和函数列表

`taglist`等插件可以提供很方便的类和函数列表功能。

### （6） 自动完成

`Vim`在`Insert Mode`下输入一个单词的前几个字符，然后用`Ctrl-p`或者`Ctrl-n`就可以列出以这些字符开头的单词，特别在配置了`ctags`后也能列出头文件中的符号，特别方便，除此外`Vim`还有行自动完成、文件名自动完成等，这点即使是现在强大的`IDE`也未免不足。

如果设置了如下选项:

```vim
:set wildmode=list:full
:set wildmenu
```

则在命令行打开文件或者输入命令时按`Tab`（以输入字符为前缀补全）或者`Ctrl-d`（列出包含输入字符的所有匹配项目）自动补全，这一功能大大降低了`Vim`的使用难度。

另外有许多插件可以实现许多`IDE`中的自动完成类成员的功能，当然，这个功能还比不上`Eclispe`、`Visual Studio`等`IDE`中的强大，这一点是`Vim`比较可惜的地方。`Vim` 7.0引入了`Omni Completion`，可以自定义匹配完成函数，也许可以弥补这个缺陷。

Reference:

- `:help 'complete'`
- `:help omni-completion`

### （7） `folding`

`Vim`支持折叠代码，还可以根据文件中特殊的标记对文件中的行折叠，可以实现`Outline`视图，这可以极大的方便编辑很大的文件。

Reference:

- `:help fold`

### （8） `quickfix`

许多人对于`UNIX`开发的印象都是“编辑代码，退出编辑器，编译，发现错误，记录出错信息，遍辑代码，退出编辑器，编译，用`gdb`调试，再编辑代码……”，这是古老的`vi`时代的事情了，有了`Vim`的`quickfix`特性，可以在`Vim`里编译然后直接跳到编译出错的行，这个反复的过程无需退出编辑器，而且`Vim`的`quickfix`特性可以经配置后支持不同的编译器以及不同的语言：只要编译器在出错信息里包含文件名和行号。

不过比较遗憾的是`Vim`对于集成调试支持还不好，有些项目尝试集成`GDB`到`Vim`，比如 http://skawina.eu.org/mikolaj/vimgdb/ 和 http://www.volny.cz/zellerin/gdbvim/ ，在 http://www.vim.org/search.php 中的`scripts`处搜索`gdb`也可以找到一些插件.这方面`Emacs`的`GUD`（`Grand Unified Debugger`）调试界面要更强大，毕竟`GCC`/`GDB`/`Emacs`是一家。

Reference:

- `:help quickfix`

### （9）`auto command`

`Vim`可以在某些事件发生时比如打开文件、保存文件、切换窗口时自动执行一些`Vim`命令，`Vim`的许多插件都利用了这个功能。常用的一种情况是把某种文件后缀指定到一种文件格式上，比如`*.jv`指定到`Java`文件格式，这样在每次打开`.jv`类型的文件时自动使用`Java`的语法高亮：

```vim
:autocmd BufNewFile, BufRead *.jv :set ft=Java
```

Reference: `:help autocmd.txt`

### （10）mode line

在编辑文件时常常指定一些选项，比如缩进量、是否将制表符转换成空格等，每次手动指定这些选项很麻烦，写到`vimrc`中却又成了全局选项，而且换了一份`Vim`，原有的设置就丢失了。`Vim`可以识别文件中的特殊行，自动设置一些选项，下面是写在`C`源文件开头的一个`mode line`示例:

```c
/* vi:set tw=0 ts=8 sw=8 noet nowrap ft=c fdm=syntax: */
/*
* File: xxxx.c
* Author: xxx
*/
```

四、强大方便的帮助系统
---------------------------

使用了那么多软件，只有`Vim`和`Emacs`的帮助系统给笔者方便快捷的感觉，大部分软件的帮助往往是摆设而已，而`Vim`的帮助的确是考虑到了自己“help”的身份，利用它能很方便容易的找到想要的东西。

`Vim`的帮助是超链接形式的，它使用的就是`tags`，所以可以跟`ctags`功能一样按`Ctrl-]`跳转到链接所指处，按`Ctrl-t`返回。

- `:help`  打开帮助首页，这个首页分类非常清楚
- `:help cmd` 查找`Normal Mode`命令，比如`:help dd`
- `:help i_cmd` 查找`Insert Mode`命令，比如`:help i_Ctrl-y`
- `:help :cmd` 查找`Command-Line`命令，比如`:help :s`
- `:help 'option'` 查找选项，比如`:help 'tabstop'`

（这些信息都在`:help`打开的帮助首页上）

如果你记不清命令或者选项的全称，那么可以利用`Tab`或者`Ctrl-d`的自动补全功能。

`:help options` 可以找到所有的选项说明

查看某一个选项的值（实际上选项是`Vim`中的一种变量，类似`SHELL`的变量以`$`符号引用，`Vim`的选项以`&`引用，另外`Vim`的寄存器以`@`引用）：

```vim
:echo &tabstop
```

五、其它高级功能
---------------------------

### （1）寄存器

`Vim`里面的寄存器可以用来保存拷贝的文本、记录的宏、设置的书签等等，一般的编辑器都只有一个剪切板（`MS Office`加入了多个剪切板），而`Vim`和`Emacs`编辑器中的多寄存器可以实现多个剪切板的功能。`Vim`中有九类寄存器：

- 无名寄存器`"`最近一次删除/修改/替换操作的文本都会放入这个寄存器
- 10个数字寄存器`0-9`拷贝或者删除的文本存入这些寄存器，这些寄存器是循环使用的，在每次存入内容到寄存器1时，原有的内容会依次存入到后一个寄存器中。
- 小删除寄存器`-`删除内容少于一行时放入这个寄存器。
- 26个命名寄存器`a-zA-Z`大小写无关。这些寄存器可以在拷贝或者删除等操作中指定使用。
- 四个只读寄存器`:.%#`特殊用途。
- 表达式寄存器`=`特殊用途。
- 选择和拖放寄存器`*+~`用于与系统剪切板交互，以及接收拖放操作的内容。
- 黑洞寄存器`_`放到这里面的内容都被丢弃，这样可以删除或拷贝时不影响其它寄存器。
- 最后一次搜索模式寄存器`/`保存最后一次搜索的正则表达式。

使用`:reg`命令可以看到所有寄存器中的内容，使用`"+y`或者`"*y`可以将`Visual Mode`下选择
的内容拷贝到系统剪切板，使用`"+p`或者`"*p`可以将剪切板中的内容粘贴到`Vim`中，如果打开了
`mswin`特性的话则在`Insert Mode`下使用`Ctrl-x`，`Ctrl-v`，`Ctrl-c`了。

Reference: `:help registers`

### （2） 宏

`Normal Mode`下按`q<reg>`，`<reg>`指`{a-zA-Z0-9"}`37个寄存器中的一个，然后可以进行任何操作，包括在模式间切换，最后在`Normal`模式下按`q`可以结束宏录制，用`@<reg>`命令可以应用这个宏，命令前可以带数字前缀表示执行多少次这个宏。

Reference: `:help q`

### （3） 书签

`Normal Mode`下按`m<reg>`作书签，`<reg>`指26个命名寄存器中的一个，然后可以用`'<reg>`或者\``<reg>` 跳到书签处。

Reference: `:help m`

### （4） 映射

`Vi/Vim`可以将某个按键序列映射到一个命令序列上，比如在配置文件`.vimrc`（`Windows`下是`_vimrc`）中写入

```vim
map <F6> <ESC>i<C-R>=strftime（"%Y-%m-%d"）<ESC><ESC>
```

即可以在`Normal Mode`下插入当前日期。

```vim
Reference: :help :map
```

### （5） 缩写

`Vi/Vim`支持用一个缩写字符串代替一个长的字符串，比如

```vim
:ab hw hello world
```

然后在`Insert Mode`下输入`hw` 后`Vim`就自动替换成了`hello world`。这里展示一个`Emacs`下`abbrev`功能的动画（没错，是`Emacs`的）：

- http://www.bloomington.in.us/~brutt/msf-abbrev.html
- http://www.bloomington.in.us/~brutt/msf-abbrev-demo.gif

Reference: `:help :ab`

### （6） `:s//`和`:g//，:!g//`

这两个命名加上正则表达式，常常能完成非常复杂的编辑任务，可以毫不夸张地说是Vim的两柄瑞士军刀。`:s`是替换操作，`:g`是查找匹配模式的行，`:!g`是查找不匹配模式的行。

http://www.vim.org/tips/tip.php?tip_id=1063 这个tip可以把:g找到的行拷贝到一个新的缓冲区中，非常有用。

Reference: 

- `:help :s`
- `:help :g`
- 
### （7） 插件

`Vim`自己有脚本语言，另外也支持用`Perl/Python/Tcl/Ruby/Scheme`编写插件，这些插件极大的丰富了`Vim`的功能。

### （8） color scheme

`Vim`有许多配色方案，下面这个链接有许多配色方案效果的图样： http://www.cs.cmu.edu/~maverick/VimColorSchemeTest/

### （9） 二进制编辑

`Vim`可以利用`xxd`实现二进制编辑，不过这项功能还是不够好用。

### （10） sign

sign指在编辑窗口的最左列显示一个标记，利用这个功能能实现很多IDE中的书签标记或者断点标记。

Reference: `:help sign`



六、`Vim Scripts`
---------------------------

`Vim script`包含几大类:

- `color scheme` 配色方案
- `ftplugin File type`插件，特定语言语法的设置，比如如何识别注释
- `syntax`  语法高亮的配色
- `plugin`  提供额外功能的插件，比如智能完成、缓冲区管理。

`Vim`的`script`安装非常简单，下载的`script`文件或者压缩包里头都有安装说明，在`Vim`的安装目录（比如`C:\VIM64`）下面有一个`vimfiles`目录，把`script`放到`vimfiles`目录下即可。对于多用户系统，可以在`HOME`目录（一般是`c:\Documents and Settings\ <USER_NAME>\`）下面建立一个`vimfiles`目录，把`script`放置到这里。

下面是一些好用的`Vim`插件，具体使用办法请参考各自。`vim`文件头部的注释。

`BufExplorer.vim`  *****

http://www.vim.org/scripts/script.php?script_id=42

这个插件可以使编辑多文件更加方便，装完插件后`Normal Mode`下输入`\be`即可打开缓冲区列表，光标放置在某一个文件上按回车即可打开这个文件，而缓冲区列表自动关闭。

`Taglist.vim`  *****

http://www.vim.org/scripts/script.php?script_id=273

这个插件可以实现类或者函数列表功能，支持`C/C++`，`java`，`perl`，`python`，`tcl`，`sql`，`php`等语言，它可以在`Vim`中创建一个窗口，列出编辑的源文件中的类、函数、变量定义列表，而且更方便的是这个列表也插入在了右键菜单中，分类存放，访问非常方便。

`TabBar.vim`  ***

http://www.vim.org/scripts/script.php?script_id=1338

这个插件实现了类似`UltraEdit`中的标签页的功能，而且能通过`Alt-<n>`来切换，`<n>`代表`1-9`。

`minibufexpl.vim`  ***

http://www.vim.org/scripts/script.php?script_id=159

实现了类似`UltraEdit`中的标签也功能。

`c.vim`   ***

http://www.vim.org/scripts/script.php?script_id=213

提供了很多便于`C/C++`编程的功能，比如文件头模版，代码片断等。

CRefVim   **
http://www.vim.org/scripts/script.php?script_id=614
为Vim定制的C参考手册，这样对于语法或者函数不清楚的地方可以方便的查找了。

latex-suite  *****
http://www.vim.org/scripts/script.php?script_id=475
http://vim-latex.sf.net/
提供了很多便于编辑TeX/LaTeX文件的功能，比如在Vim里面编译或者预览、自动插入TeX标记等。

`word_complete.vim` ***
http://www.vim.org/scripts/script.php?script_id=73

`Insert`模式下在输入的时候自动补全单词，如果补全正确可以按`Tab`键接受，否则可以不管它继续输入或者按`Ctrl-n`，`Ctrl-p`切换补全。 注意是输入三个字符后才开始补全。

`Vim JDE`

http://www.vim.org/scripts/script.php?script_id=1213

支持`C/C++`等的自动完成（需要`Vim 7.0`，编译时打开`+ruby`特性）．

`cppcomplete.vim`  **

http://www.vim.org/scripts/script.php?script_id=527

能自动完成`C/C++/Java`的结构或类成员，注意它的快捷键是`Alt-l`（字母`L`）不是`Alt-i`。

`The NEAD Commenter` **

http://www.vim.org/scripts/script.php?script_id=1218

在许多类型的文件中方便的加上注释或者取消注释。

`winmanager`

http://www.vim.org/scripts/script.php?script_id=95

把标准的`File Explorer`以及`Buffer Explorer`插件集成在一起，提供现代编辑器中常见的文件列表和缓冲区列表功能。

`sketch.vim` ***

http://www.vim.org/scripts/script.php?script_id=705

`Draw with mouse: boxes, arrows, lines, fills`. `Transparent/opaque drag and drop`.照着它的教程做一遍，你就会震撼于它的创意了。

`DrawIt.vim` **

http://www.vim.org/scripts/script.php?script_id=40

可以方便的画连线图。

`MultipleSearch`  ***

http://www.vim.org/scripts/script.php?script_id=479

`MultipleSearch2.vim` ***

http://www.vim.org/scripts/script.php?script_id=1183

`Mark.vim`  ***

http://www.vim.org/scripts/script.php?script_id=1238

`otf.vim`   **

http://www.vim.org/scripts/script.php?script_id=634

这些插件可以同时高亮显示多次搜索结果，这个特性非常有利于显示代码中某些变量或函数的调用位置。

`SearchComplete.vim` *

http://www.vim.org/scripts/script.php?script_id=474

可以用/搜索时按`Tab`补全要搜索的单词。

`Vim Intellisense`

http://insenvim.sourceforge.net

顾名思义，此插件用于给Vim提供智能完成功能，支持`C++`，`C#`，`Java`，`JSP`，`HTML`，`SQL`，`XML`，笔者安装后一直懒得配置，也就没用上。

`project`

http://www.vim.org/scripts/script.php?script_id=69

提供一些`IDE`功能，看介绍似乎很不错。

`JavaBrower`

http://www.vim.org/scripts/script.php?script_id=588

提供文件中`Java`类的树状列表。

`vimspell`

http://www.vim.org/scripts/script.php?script_id=465

ispell or aspell based spell checker with fly-spelling。

`cream`

http://cream.sourceforge.net/

一套配置文件，可以把`Vim`的界面改成`CUA`（`Common User Access`）模型，降低`Vim`的学习难度，个人不推荐这种做法，不过其中有些高级配置值得学习（有意思的是`Emacs`也有类似的项目: `Easymacs`，`EmacsW32`）。

`IComplete`

http://icomplete.sf.net

搭配`Vim 7.0`的`Omni Complete`，可以做到`C/C++`的智能完成功能.

七、`Vim`资源
---------------------------

- http://www.vim.org Vim主页，有许多scripts和tips，查找插件的第一去处
- http://newsmth.net  新水木BBS的Vim版，有很多Vim爱好者可以讨论
- http://vimdoc.sf.net Vim文档工程
- http://vcd.gro.clinux.org/ Vim中文文档
- http://tnerual.eriogerg.free.fr/vim.html Vim Quick Reference Card
- http://edyfox.codecarver.org/ newsmth Vim版版主的wiki
- http://learn.tsinghua.edu.cn:8080/2001315450/ 王垠的个人主页
- 《学习vi编辑器（第六版）》机械工业出版社译，O'Reilly

几个学习正则表达式的工具（from happyvim at newsmth）

- http://weitz.de/regex-coach/  Regex Coach
- http://jregexptester.sourceforge.net/ JRegexp Tester
- http://www.regexbuddy.com/  Regex Buddy
- http://www.yzis.org/  yzis是一个新的`vi`变种，它支持变宽字体，目前功能还不够丰富。

http://ex-vi.sourceforge.net/ 传统`vi`的源代码


八、编译安装最新`CVS`版的`Vim`
---------------------------

1. 获取源代码

```bash
cvs -z3 -d:pserver:anonymous@cvs.sf.net:/cvsroot/vim co vim7
```

源代码位于当前目录的`vim7`目录下面，假设安装目标在d:\work\program\Vim\vim70b

2.编译

注意重新编译前最好`clean`一下，确保“*obj*”目录被删除了，否则可能出现莫名其妙的问题，比如链接时找不到一些函数。下面是一个批处理脚本：

```bat
rem --------------------------------------------->
@echo off
set path=c:\winnt;c:\winnt\system32
vcvars32.bat
cd vim7\src
rem .sh文件跟其它程序有关联,避免运行VC的link时执行了link.sh
ren link.sh link.sh.old
@echo clean...
rem clean时加入这些选项是因为$(OUTDIR)和$(OBJDIR)根据这些标志合成的,
rem 如果不加这些标志, 在rmdir /s /q时会找不到目录, 从而没有删除掉。
nmake -f Make_mvc.mak clean FEATURES=HUGE GUI=yes OLE=yes MBYTE=yes IME=yes GDYNAMIC_IME=yes GIME=yes PERL=d:\work\program\Perl DYNAMIC_PERL=yes PERL_VER=58 PYTHON=d:\work\program\Python24 DYNAMIC_PYTHON=yes PYTHON_VER=24  SNIFF=yes CSCOPE=yes CPUNU=i586 DEBUG=yes MAP=lines
@echo build big debug version...
nmake -f Make_mvc.mak all FEATURES=HUGE GUI=yes OLE=yes MBYTE=yes IME=yes GDYNAMIC_IME=yes GIME=yes PERL=d:\work\program\Perl DYNAMIC_PERL=yes PERL_VER=58 PYTHON=d:\work\program\Python24 DYNAMIC_PYTHON=yes PYTHON_VER=24  SNIFF=yes CSCOPE=yes CPUNU=i586 DEBUG=yes MAP=lines
ren link.sh.old link.sh
@echo done.
pause
@echo on
rem <-----------------------------------------------
```

对于`MinGW`，

```bat
@echo off
@echo clean...
make -f Make_ming.mak clean DEBUG=yes
@echo make...
make -f Make_ming.mak all GUI=yes OLE=yes MBYTE=yes IME=yes GDYNAMIC_IME=yes GIME=yes PERL=d:/work/program/Perl DYNAMIC_PERL=yes PERL_VER=58 PYTHON=d:/work/program/Python24 DYNAMIC_PYTHON=yes PYTHON_VER=24 CSCOPE=yes CPUNU=i586 DEBUG=yes MAP=lines
@echo done.
pause
@echo on
```

如果发现`MinGW`编译出来的`gvimd.exe`非常大（约4~5MB），可以用`MinGW`自带的`strip`处理一下。

3. 安装

如果你的系统先前有一份不同版本的`Vim`，那么需要先卸载掉（运行vim\vimXX\uninstal.exe，或者在拷贝完文件后运行新版Vim的install.exe，它也会提示卸载旧版本），最近的`Vim` 7 `CVS`代码安装目录也从`vim70aa`转变到`vim70b`，也需要卸载原先的`vim70aa`，这一步主要是删除一些注册表项。

如果你从`CVS`上更新代码后，install要求的安装目录名字没有改变（也就是说`Vim`版本没变），那么不需要卸载原先的版本，直接拷贝文件覆盖即可，如果你想更改目录安装的话也需要卸载。

```bat
cd vim7
dir /s/b *.exe
dir /s/b *.dll
xcopy vim7\runtime d:\work\program\vim\vim70b （vim70b是一个目录）
copy vim7\src\*.exe  d:\work\program\Vim\vim70b
copy vim7\src\xxd\xxd.exe d:\work\program\Vim\vim70b
copy vim7\src\vimtbar.dll d:\work\program\Vim\vim70b
copy vim7\src\GvimExt\gvimext.dll d:\work\program\Vim\vim70b
copy vim7\src\VisVim\Visvim.dll d:\work\program\Vim\vim70b
```
然后进入`vim70b`目录运行`install.exe`，如果发现一个`DOS`窗口一闪而逝，那么很可能是建立的`vim70b`目录名不对，比如笔者前几天升级后使用的仍然是`vim70aa`目录名，在`DOS`窗口中运行`install.exe`它就提示需要在`vim70b`目录下运行，将`vim70aa`改名即可。`install.exe`的源代码是`vim7\src\dosinst.c`，这里面修改了注册表，并拷贝一些文件到`WINDOWS`目录下等等。

4．善后

视情况你需要更新`PATH`环境变量、文件关联、`_vimrc`中的路径名等，并将`diff.exe`，`ctags.exe`，`cscope.exe`拷贝到`vim70b`下面。

最后运行`gvimd.exe`，键入`:ver`开始享受`Vim`吧。

九、一份`vimrc`配置文件
---------------------------

【注：原文如此，不太清楚作者所要表达的信息】

十、`Vim`的不足
---------------------------

前面已经提到，`Vim`在自动完成和集成调试方面还比不上现代的许多`IDE`，另外`Vim`对二进制编辑还没有`UltraEdit`强大，对于现在流行的重构，`Vim`也支持不力，但是作为一个文本编辑器而言，堪比的只有`Emacs`，另外`Visual SlickEdit`也很强大，不过它是商业软件。`Vim`也可以嵌入到`Visual Studio`中作为编辑器，另外`Code Forge`，`Eclipse`，`NetBeans`，`Sun Visual Workshop`等也提供了一定的`Vim`支持或者键绑定。

Reference:

- `:help workshop`
- `:help netbeans`
- `:help debugger`
