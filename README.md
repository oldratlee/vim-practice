Vim Practice
=================================

> `Vim`和`Emacs`：编辑器之神和神的编辑器。

上面的这句调侃不重要，重要的是效率！

人类智慧输出包含了『录入』和『编辑』操作。

目前，『键盘录入』/『键盘编辑』是主流方式。  
键盘操作效率的关键是『打字指法』/『盲打』。

对于录入，当然还有语音录入等等（期待脑电波的录入方式成为现实 :smile:）。  
对于中文，还多一样，即『输入法』，如五笔、拼音。

『编辑器』 对于 编辑 的重要性 不言而喻。

综上，智慧输出包含了：

1. 键盘操作：
	- 打字指法
1. 录入 => 键盘录入：
	- 输入法
1. 编辑 => 键盘编辑：
	- 编辑器

上面『打字指法』和『编辑器』的顺序重要的，如果你还不能盲打，那么不要想着要找一个的编辑器就能高效了！ :dancers:

---------------------

<img src="images/vim-icon.png" width="256" align="right" >

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [学习资料](#%E5%AD%A6%E4%B9%A0%E8%B5%84%E6%96%99)
  - [文章/讨论](#%E6%96%87%E7%AB%A0%E8%AE%A8%E8%AE%BA)
  - [上手](#%E4%B8%8A%E6%89%8B)
  - [速查](#%E9%80%9F%E6%9F%A5)
  - [系统学习](#%E7%B3%BB%E7%BB%9F%E5%AD%A6%E4%B9%A0)
- [`Vim`配置/插件的资源](#vim%E9%85%8D%E7%BD%AE%E6%8F%92%E4%BB%B6%E7%9A%84%E8%B5%84%E6%BA%90)
- [分享视频及其笔记](#%E5%88%86%E4%BA%AB%E8%A7%86%E9%A2%91%E5%8F%8A%E5%85%B6%E7%AC%94%E8%AE%B0)
  - [Learning Vim in a Week](#learning-vim-in-a-week)
  - [7 Habits For Effective Text Editing 2.0](#7-habits-for-effective-text-editing-20)
    - [1. 编辑器的选择](#1-%E7%BC%96%E8%BE%91%E5%99%A8%E7%9A%84%E9%80%89%E6%8B%A9)
    - [2. 达到高效的3个基本步骤](#2-%E8%BE%BE%E5%88%B0%E9%AB%98%E6%95%88%E7%9A%843%E4%B8%AA%E5%9F%BA%E6%9C%AC%E6%AD%A5%E9%AA%A4)
    - [3. 如何做到低效地编辑](#3-%E5%A6%82%E4%BD%95%E5%81%9A%E5%88%B0%E4%BD%8E%E6%95%88%E5%9C%B0%E7%BC%96%E8%BE%91)
- [个人关心的问题](#%E4%B8%AA%E4%BA%BA%E5%85%B3%E5%BF%83%E7%9A%84%E9%97%AE%E9%A2%98)
  - [中文输入法在`Vim`便利切换的问题](#%E4%B8%AD%E6%96%87%E8%BE%93%E5%85%A5%E6%B3%95%E5%9C%A8vim%E4%BE%BF%E5%88%A9%E5%88%87%E6%8D%A2%E7%9A%84%E9%97%AE%E9%A2%98)
  - [`Vim`中文分词的支持](#vim%E4%B8%AD%E6%96%87%E5%88%86%E8%AF%8D%E7%9A%84%E6%94%AF%E6%8C%81)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

学习资料
------------------------

### 文章/讨论

- [Why Vim is awesome](http://federicoramirez.name/why-vim-is-awesome/)
- [Awesome Vim Plugins](https://reinteractive.net/posts/166-awesome-vim-plugins)
- [VIM is awesome— But don’t overdo it](https://medium.com/@PhilPlckthun/vim-is-awesome-but-dont-overdo-it-c03594e6bb5b#.hyy2nhhe9)  
	过犹不及，再好的东西，也要明白什么时候不合适，这是反而说明是深的理解。
- [Coming Home to Vim](http://stevelosh.com/blog/2010/09/coming-home-to-vim/)
- [从`Vim`到`Emacs`到`Evil`](http://ceyes.github.io/2015-01/from-Vim-to-Emacs/)  
	`Emacs`只是个强大的平台，提供各种定制来满足每个人的不同需求。所以Thanks `Evil`，我已把`Emacs` 打造成了理想的『`Vim`化的`Emacs Editor`』，我可以纵情使用更方便的方式来工作。
- 知乎上的一些话题（看一下讨论扩展一下了解）
	- [有哪些编程必备的 Vim 配置？ - 知乎](https://www.zhihu.com/question/19989337)
	- [到底 VIM 能配置到多强大的程度？ - 知乎](https://www.zhihu.com/question/20151659)
	- [为什么不少程序员极度推崇 Vim 和 Emacs，却对 IDE 嗤之以鼻？ - 知乎](https://www.zhihu.com/question/21504638)

### 上手

- `vimtutor`

[<img src="images/vi-vim-cheat-sheet-sch-preview.gif" width="256" align="right">](https://raw.githubusercontent.com/oldratlee/vim-practice/master/images/vi-vim-cheat-sheet-sch.gif)

### 速查

内容比较少，且有中文版的：

- [Vim Cheat Sheet中文版 - vim.rtorr.com](http://vim.rtorr.com/lang/zh_cn/)
- Graphical vi/Vim Cheat Sheet and Tutorial中文版（右图，点击看大图）  
	该图的[来源链接](http://blog.ngedit.com/vi-vim-cheat-sheet-sch.gif)，[官网](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)中文版。 # 这张图你肯定在别人桌子上见过 :smile:

内容比较多的：

[<img src="images/beautiful-vim-cheat-sheet-preview.png" width="256" align="right">](https://raw.githubusercontent.com/oldratlee/vim-practice/master/images/beautiful-vim-cheat-sheet.png)

- Beautiful Vim Cheat-Sheet（右图，点击看大图）  
	\# 该图的[来源链接](http://i.imgur.com/YLInLlY.png)，这个Sheet Cheat的[评论](https://www.reddit.com/r/vim/comments/32r85c/this_is_my_favorite_vim_cheat_sheet_does_anyone/)和[官网](http://vimcheatsheet.com/)。
- [Cheat Sheet - michael.peopleofhonoronly.com](http://michael.peopleofhonoronly.com/vim/)

Cheat Sheet有几个就够用了，别多看了你～ 当然还有[更多Vim Cheat Sheet](more-cheat-sheet.md) :joy:

### 系统学习

- `Vim` user manual/reference，即是`Vim`的内置帮助系统的内容，内容丰富！  
	中文版 <http://sourceforge.net/projects/vimcdoc/files/pdf-manual/>
	- 学会用`Vim`的内置帮助 `:h` `:h 'option'` `:h command` `:h :ex_command` `:h ctrl-w`
	- `Vim`帮助系统的帮助，即如何使用`Vim`的帮助系统： `:h helphelp`
- 个人整理的[`Vim`书籍豆列](http://www.douban.com/doulist/41500790/)
	- 个人先看的是[Vim实用技巧 - 以思维的速度编辑文本](http://book.douban.com/subject/25869486/)  
		以编辑理念和实践模式为纲介绍，推荐之。
		词句共灵感一射，编辑与思考齐飞！
	- [Learning the vi and Vim Editors](http://book.douban.com/subject/3767413/)，行文稳健（很合我的风格）：
		- 先介绍基本功能再说明如何组合技术，从熟悉到领会。
		- 先介绍基本编辑器（`Vi`/`Ex`）再说明`Vim`，从历史发展的过程更能深入理解功能适用场景。
		- 还介绍`Vi`/`Vim`的周边信息，如`Vi`/`Vim`的名家名言，各个变种，`Vi`/`Emacs`的文化等等
- [vim-galore - Everything you need to know about Vim](https://github.com/mhinz/vim-galore)  
	`Vim`方方面面资料汇总。这个仓库有4K+的star！

`Vim`配置/插件的资源
-------------------------

- [`spf13-vim` - a distribution of Vim plugins and resources](https://github.com/spf13/spf13-vim) - `Vim`的配置框架和配置集合。
	- 包含很多插件/主题，无论是小白还是高手，省时好用是王道，用起来。 这个项目有 7K+ star！
	- 直接使用，配置的效果和包含的插件 已经很不错了。
	- `spf13-vim`首先是个`Vim`**配置框架**，水准尽显！
- [Janus: Vim Distribution](https://github.com/carlhuda/janus)
	- 又一个`Vim`配置版本。这个项目有 将近7K star！
- [The Ultimate vimrc](https://github.com/amix/vimrc) - Over the last 8 years I have used and tweaked Vim.
	- 作者_8年_在`Vim`配置上的积累。这个项目有 5K+ star！
	- 绝对值得参考学习！
	- 因为不是框架，所以我会选`spf13-vim`作为我的配置主方式。
- [Maximum Awesome](https://github.com/square/maximum-awesome) - 三架马车`Vim`、`tmux`和`iTerm 2`的配置。
	- 值得参考，这个项目有 4K+ star！
- [Vim Awesome - a comprehensive, accurate, and up-to-date directory of Vim plugins](http://vimawesome.com/)
	- `Vim`插件浏览站点

分享视频及其笔记
--------------------------

### Learning Vim in a Week

[Youtube视频地址](https://www.youtube.com/watch?v=_NUO4JEtkDw)，讲解了入门`Vim`时

- 观念上的改变/注意事项
	- 总有更好的做法
	- 学习`Vim`是个持续的过程，可以不断提高能力，进而逐步提升效率。
- 不要在平时的工作使用中开始学习`Vim`！因为 工作紧急需要的效率 与 `Vim`刚开始学习时摸索的低效 有矛盾！
- `Vim`命令记忆法

还给出实用的Tips：

1. `Hack`（定制）你的键盘
	- 通过[`Seil`](https://pqrs.org/osx/karabiner/seil.html.en)修改`Caplock`键成`ECS`键
	- 通过[`karabiner`](https://pqrs.org/osx/karabiner/)修改键盘重复前延迟和加速重复频率，以快速地在`Vim`中导航
1. [Graphical vi/Vim Cheat Sheet and Tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)  
	中文版 <http://blog.ngedit.com/vi-vim-cheat-sheet-sch.gif>
1. `.vimrc` - 你的新朋友！
	- 一定要**_版本控制_**起来！
	- 可以偷借你朋友的配置文件（`dotfiles`），或是借鉴 <https://github.com/thoughtbot/dotfiles>
1. 通过官方的`vimtutor`定期适量的学习 / 通过游戏<http://vim-adventures.com/>来学习～
1. 通过看高手的操作视频方法来学习
	- [vimcasts.org](http://vimcasts.org/)
	- [upcase.com/vim](https://upcase.com/vim)

### 7 Habits For Effective Text Editing 2.0

[Youtube视频地址](https://www.youtube.com/watch?v=p6K4iIMlouI)，2007-02-13，`Vim`作者**_Brian Moolenaar_** 在`Google`做的演讲，讲解了编辑器的选择、达到高效编辑的方法和理念。

#### 1. 编辑器的选择

- 如果你已经熟悉精通了一个编辑器，挺好的。这里不会讨论『`Vim`比`Emacs`更好』这个问题，但你可能会觉得`Emacs`并不爽～ :joy:
- 但不要使用像`Notepad`这样简陋的编辑器，你浪费了大量的生命！ :astonished:
- 要么用一个觉得的爽的编辑器，要么转用`Vim`吧～ :stuck_out_tongue_winking_eye: 除此再没有其它的出路！（_There is NO other RULE!_）

#### 2. 达到高效的3个基本步骤

这部分的总结页：

1. 发觉低效
	- 发现你浪费时间的地方
2. 找到更快的方法
	- 阅读在线帮助
	- 阅读速查手册、书籍等等
	- 问问朋友或是同事
	- 搜索网络
	- 自己搞定
3. 使之成为习惯
	- 动手做起来
	- 持续改进

> 附原文：
>
1. Step 1: Detect inefficiency
	- Find out what you waste time on
1. Step 2: Find a quicker way
	- read the on-line help
	- read the quick reference, books, etc.
	- ask friends and colleagues
	- search the internet
	- do It yourself
1. Step 3: Make it a habit
	- do it
	- keep on improving

#### 3. 如何做到低效地编辑

> @oldratlee 这是我最喜欢的一节 :joy:

- 必须立即开始编辑文本。没空去读文档或是学新的命令。  
	**_结果一直只会用原始的命令。_**
- 想学习编辑器提供的每一个功能，总是想用最快捷的命令。  
	**_结果是浪费大量的时间去学习从不会用到的内容。_**

> 附原文：
>
How **not** to edit effectively
- You have to get the text ready right now. No time
to read documentation or leam a new command.  
**_You will keep on using primitive commands._**
- You want to learn every feature the editor offers
and use the most efficient command all the time.  
**_You will waste a lot of time learning things you will never use._**

个人关心的问题
--------------------------

欢迎高手指点！请提交[Issue](https://github.com/oldratlee/vim-pratice/issues)。

### 中文输入法在`Vim`便利切换的问题

本来`Vim`是有模式的（`Normal/Command/Insert/Replace/Visual/...`），再加上中文需要输入法切换（你处在中文输入还是英文输入状态），中文编辑需要在脑子记住当前是哪个状态的，个人觉得这很蛋疼。

理想的状态期望：

- 当切换到如`Normal/Command`模式时，自动切换到英文输入法。

解法参见[`@CodeFalling`](https://github.com/CodeFalling)的[完美解决 Mac 下 Vim/Emacs 的输入法切换问题](https://codefalling.com/2015/11/02/fcitx-vim-for-OS-X/)：

1. 安装配合工具[fcitx-remote-for-osx](https://github.com/CodeFalling/fcitx-remote-for-osx)
2. 安装`Vim`插件[fcitx-vim-osx](https://github.com/CodeFalling/fcitx-vim-osx)

PS: Thank you for your perfect works! @CodeFalling

### `Vim`中文分词的支持

不像英文，中文的词的分离没有像空格这样明显分隔，词相关的移动变得很麻烦。

目前还**_没有_**找到解法。总得来说，这个问题不大，用词以外的方式也可以比较快地完成导航。

- [Vim与中文分词 - google group](https://groups.google.com/forum/#!msg/pongba/RXVqM4sKseU/TrCrySBH1HwJ)
- [Vim模式下能增加中文分词的支持么？](https://github.com/ghosert/cmd-editor/issues/103)
- [关于Vim&Emacs的中文分词相关讨论](https://biergaizi.info/archives/2012/04/1322.html)

　

-------------------------------

[![](images/vim-love.gif)](http://www.vim.org/buttons.php)
