# `Emacs`是一种信仰！世界最强编辑器介绍

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [一、`Emacs`的历史](#%E4%B8%80emacs%E7%9A%84%E5%8E%86%E5%8F%B2)
- [二、`Emacs`能做什么](#%E4%BA%8Cemacs%E8%83%BD%E5%81%9A%E4%BB%80%E4%B9%88)
    - [1. 编辑文本](#1-%E7%BC%96%E8%BE%91%E6%96%87%E6%9C%AC)
    - [2. 编辑程序](#2-%E7%BC%96%E8%BE%91%E7%A8%8B%E5%BA%8F)
    - [3. 作为其它程序的界面](#3-%E4%BD%9C%E4%B8%BA%E5%85%B6%E5%AE%83%E7%A8%8B%E5%BA%8F%E7%9A%84%E7%95%8C%E9%9D%A2)
    - [4. 作为操作系统](#4-%E4%BD%9C%E4%B8%BA%E6%93%8D%E4%BD%9C%E7%B3%BB%E7%BB%9F)
    - [5. 煮咖啡](#5-%E7%85%AE%E5%92%96%E5%95%A1)
- [三、`Emacs`的相关资料](#%E4%B8%89emacs%E7%9A%84%E7%9B%B8%E5%85%B3%E8%B5%84%E6%96%99)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

> **编者按：** 这个世界最强是个怎么样的强法呢？一说：`Emacs`是一种『信仰』。另说：世界上的程序员分三种，一种使用`Emacs`，一种使用`Vim`，剩余的是其它。（完全无视其他编辑器的存在……）

来看看这个被人奉为信仰、可以煮咖啡的编辑器是个什么样子。

# 一、`Emacs`的历史

`Emacs`程序的最初版本是由 _Richard Stallman_ 在1975年写成（年龄比很多读者都大吧 :) ）。之后其衍生版本众多。目前使用得最多的两个版本是 _Richard Stallman_ 在1984年开发的一个版本 —— `GNU Emacs`和1991年由 _Jamie Zawinski_ 写成的`XEmacs`。

看看他的简称你会头晕。

> E. M. A. C. S.
>
> * Emacs Makes A Computer Slow
> * Escape Meta Alt Control Shift
> * Emacs Makers Are Crazy Sickos
> * Emacs Makes All Computing Simple
> * Emacs Makefiles Annihilate C-Shells
> * Emacs Manuals Always Cause Senility
> * Emacs May Allow Customized Screwups
> * Emacs Manuals Are Cryptic and Surreal
> * Eventually Munches All Computer Storage
> * Eight Megabytes And Constantly Swapping
> * Elsewhere Maybe All Commands are Simple
> * Excellent Manuals Are Clearly Suppressed
> * Emacs May Alienate Clients and Supporters
> * Except by Middle Aged Computer Scientists
> * Extended Macros Are Considered Superfluous
> * Every Mode Accelerates Creation of Software
> * Each Manual's Audience is Completely Stupefied
> * Exceptionally Mediocre Algorithm for Computer Scientists
> * Easily Maintained with the Assistance of Chemical Solutions
> * Eradication of Memory Accomplished with Complete Simplicity

（`PConline`注：请原谅没有翻译。专有名词的翻译比较困难，而且很多东西翻译后就完全失去其原有的味道了。）

# 二、`Emacs`能做什么

很多人不理解为什么`Emacs`的用户那么多，他们是如此的热爱`Emacs`，甚至有的人把它当成了『信仰』。虽然笔者没有这个信仰，但是它的确很好，很喜欢用它编辑各种文件，现在来看看`Emacs`能做什么。

据笔者所知，`Emacs`的能力包括：

## 1. 编辑文本

`Emacs`编辑文本的能力是非常强的。它的其它很多功能都是依赖于强大的编辑能力。`Emacs`是人性化的设计，它非常可靠，不会莫名其妙弄坏你的文件，用它编辑重要的文本信心有保障。

可能你开头觉得它的键绑定用起来非常不顺手。它有很多长长的『快捷键』，比如按下`Ctrl-h`再按`Ctrl-i`……比起`Vim`的一个键的快捷键的确慢很多。但是`Emacs`的优势不在于击键的频率，它的目标是用一个键，甚至不按键盘，就完成复杂而智能的操作。面对`Emacs`，你感觉自己像是一个魔法师，轻轻一挥魔棒，任务就完成了。

`Emacs`的文本处理能力极强，不管你要处理自然语言还是机器语言。不管是中文还是英语，不管是小说、`HTML`，还是`C`程序、`Java`程序，都可以按`M-e`向前移动一句话（`C`和`Java`语句），按`M-k`删除一句话，按`M-}`移动一段话，按`M-p`（笔者自己设定的按键）删除一段话。因为`Emacs`知道，什么样算是一句话（`sentence-end`），什么算是一段话（`paragraph-start`）。而且它知道在不同的文档里，句子和段落有什么区别。

笔者只要按`M-q`就可以把一段话排的规规矩矩。只要按一个键就可以把一个数字列表重新排序。在`HTML`文档里只要按`C-c backspace`就可以把一组`tag`删掉，按`C-c C-c i`就可以插入一个图片，按`C-c C-v`就可以马上把这个文档送到一个`Mozilla`窗口去预览……在`LaTeX`文档里按`C-c C-r RET`就可以把文档里选定的区域送给`LaTeX`处理，马上看到效果。

现在你是不是感觉自己更像魔法师了？继续！

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e15.png)  
**图1** `Windows`下的`Emacs`

`Emacs`有非常友好而强大的人机界面。在搜索替换字符串时，你就能明显感觉到这个优点。它在输入`regexp`（正则表达式）搜索的时候还能进行`incremental search`，而且对部分匹配的字串都有非常漂亮的加量。在替换的时候，它独有`recursive edit`，可以打断替换过程，编辑附近的需要纠正的文字，然后继续替换。这个功能对很多人都是非常重要的，因为，在替换过程中，被替换的文字附近的文字很可能会因为它被替换而需要修改。看看这个抓图，就是`isearch`输入一个正则表达式的情况。

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e1.jpg)  
**图2** 用`isearch`输入正则表达式

`Emacs`的拼写检查能力非常强大。你可以使用`flyspell`随时检查你的拼写错误，看看这幅图是`flyspell-mode`的`LaTeX`文档，`flyspell`知道段落里的某些单词是错的，而`\begin{myquotation}`里的`myquotation`被认为是一个用户自己定义的`LaTeX`环境名字而不认为是拼写错误。

[](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e2.jpg)  
**图3** `flyspell`检查出的拼写错误

你还可以利用`ispell`的补全功能输入你容易打错的很长的英语单词，看看这幅图。

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e3.jpg)  
**图4** 利用`ispell`输入比较长的单词

`Emacs`的`hippie-expand`能够非常智能的补全你的文本、文件名和其它很多东西，而这个功能都是用同一个按键完成！

`Emacs`能输入和显示多国语言文本，是一个真正的国际化程序。

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e4.jpg)  
**图5** `Emacs`支持多国语言

`Emacs`能识别多种自然语言符号，它能知道哪些符号是括号，那些是标点。看看这个抓图里，`Emacs`显示了中文书名号的匹配情况。《正确》 和 《错误>。

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e5.jpg)  
**图6** 书名号的匹配（一）

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e6.jpg)  
**图7** 书名号的匹配（二）

`Emacs`的键是可以任意绑定的。甚至可以使用`Windows`键盘上的`Win`和`Menu`键来控制。笔者的『`Win` + 鼠标中键』可以弹出一个`buffer`里所有引用到的文件和`URL`的列表，当点击它们就可以编辑那个文件或者在`Mozilla`中打开连接，如图8。

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e16.png)  
**图8** 笔者的『`Win` + 鼠标中键』功能

你能想到的和你不能想到的编辑功能，`Emacs`都能完成。说到这里你可能又会说：『这个功能，`vi`也有』，『这个功能，`UltraEdit`都有』……对，这些能力可能很多其它程序也有。对，但是让一个`Emacs`拥有这些功能比起其它程序的确要费少得多的力气。很多热心的爱好者看到其它编辑器有一个很酷的功能，他就可以想办法把它加入到`Emacs`里面。`Emacs`可以被不断的扩充。其实，你平常用到的几乎所有功能都是扩展的功能。

建立一个微小的基本功能的集合，然后把所有复杂功能作为这些基本功能的组合。这体现了一种程序设计的哲学。不同于`Windows`，也不同于`UNIX`，它更好的协调了程序的灵活性和同一性。

`Emacs`编辑文本方面的扩展简直没法计数。`folding`、`narrow`、`outline`……这些给人带来了很大的方便，已经被许许多多的人采用。

## 2. 编辑程序

程序也是一种特殊的文本文件。因为`Emacs`特别适合编辑程序，所以特别在这里提出。`Emacs`可以方便的编辑任何类型的计算机语言程序代码，而且为它们提供语法加亮，自动缩进。你可以对程序的语句进行操作。比如向下移动一个`list`，删除整个`C`函数……你可以用一个键就把许多行注释重新排的整整齐齐。

一些扩展可以让你方便的浏览代码，而且它们可以识别代码的语义。列出函数名、参数和类型、变量名、类、宏、方法、`defun`、`include`的文件。当你编辑程序时，`Emacs`可以帮你补全函数名，参数等等。你可以在代码中间自由的穿梭。

你可以使用`Ediff`来比较两个或者三个文件，`Emacs`可以把不同的地方高亮，而且修改过的地方有特别明显的颜色不同。笔者经常用这个功能很快找到修改过的代码里新出现的错误的位置，如图9。

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e7.jpg)  
**图9** `Emacs`上的高亮功能

你用一个指头就可以让`Emacs`调用编译器编译程序，列出错误列表，启动调试器，在另一个窗口显示当前执行源代码的位置。

`Emacs`的`narrow`和`folding`功能使你能够编辑几万行代码在一个文件里而不会觉得摸不着方向。看看这幅图，你能想像这是`TeX`的源代码的24000多行里的一部分吗？你操作它的时候就像只有几十行。

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e8.jpg)  
**图10** `Emacs`的narrow功能

`folding`可以使你的很长的文档折叠起来，看看这幅图就是一个很长的网页，在需要的时候可以进入其中一个主题进行编辑，当退出主题时，整个文档看起来就像只有一页那么长。可以随意的移动主题，就像只移动了一行。

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e9.jpg)  
**图11** `Emacs`的`folding`功能

加上一些`elisp`，`Emacs`就可以成为一个代码浏览器。

## 3. 作为其它程序的界面

`Emacs`可以作为很多程序的前端。比如`w3m`、`lynx`（两者都是浏览器）、`MAXIMA`计算机代数系统、`Scheme48`等`Scheme`解释器、`shell`……这些文本方式的程序一旦与`Emacs`接合就拥有了巨大的编辑的能力。如图13，`Scheme48`加上`Emacs`，就有了语法加亮和方便的热键，可以非常方便的使用`Scheme`解释器了。

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e10.jpg)  
**图12** `Emacs`上用`w3m`浏览网页

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e17.png)  
**图13** `Emacs`加`Scheme48`后的强大语法加亮功能

## 4. 作为操作系统

`Emacs`就像一个具有编辑功能的操作系统，你可以用它干很多事情。比如：阅读`email`和新闻组、浏览网页、管理文件目录（`dired`）、作为网页服务器、远程编辑文件、记录日程、约会提醒、电子日历、查字典、`ICQ`聊天、放`mp3`……

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e11.jpg)  
**图14** 用`Emacs`新闻组

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e12.jpg)  
**图15** 用`Emacs`管理文件目录（`dired`）

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e13.jpg)  
**图16** `Emacs`上的电子日历

![](http://www.pconline.com.cn/pcedu/soft/gj/photo/0609/pic/060911_e14.jpg)  
**图17** 在`Emacs`上查字典

## 5. 煮咖啡

如果你工作的地方有自动咖啡机，`Emacs`还可以帮你点咖啡。 :)

煮咖啡的方法，请参见[这里](http://72.14.203.104/search?sourceid=navclient&q=cache:http://www.chez.com/emarsden/downloads)。（原链接于9月12日不能用，给出的是`Google`快照的内容。）

# 三、`Emacs`的相关资料

1. [`Emacs`主页](http://www.gnu.org/software/emacs/)：这里能找到很多信息。
2. [`Emacs` `FTP`](http://ftp.gnu.org/pub/gnu/emacs/)：这里能下载到`Emacs`的发行版。
3. [`Emacs` `CVS`](http://savannah.gnu.org/projects/emacs/)：这里能下载到最新的`CVS`版本的`Emacs`。
4. [`SourceForce.net`](http://sourceforge.net/softwaremap/trove_list.php?form_cat=64)：这里有许许多多`Emacs`相关的程序，从提供基本操作方便的， 到浏览代码，编辑程序…… 内容非常广泛。
5. [`EmacsWiki`](http://www.emacswiki.org/)：一个非常好的`WiKi`网站。里面有很多`Emacs`的使用技巧。
6. [`dotemacs`](http://www.dotemacs.de/)：一个搜集`.emacs`文件的网站。你可以从这里学习怎么配置`.emacs`。
