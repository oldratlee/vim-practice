# Vim Practice [![知识共享协议（CC协议）](https://img.shields.io/badge/License-Creative%20Commons-DC3D24.svg) ![Attribution-NonCommercial-ShareAlike CC BY-NC-SA](LICENSE.png)](https://creativecommons.org/licenses/by-nc-sa/4.0/deed.zh)

<img src="images/vim-icon.png" width="256" align="right" >

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [序](#%E5%BA%8F)
    - [`Vim` vs. `Emacs`](#vim-vs-emacs)
    - [关于编辑本身](#%E5%85%B3%E4%BA%8E%E7%BC%96%E8%BE%91%E6%9C%AC%E8%BA%AB)
- [学习资料](#%E5%AD%A6%E4%B9%A0%E8%B5%84%E6%96%99)
    - [关于『学习』本身的规律](#%E5%85%B3%E4%BA%8E%E3%80%8E%E5%AD%A6%E4%B9%A0%E3%80%8F%E6%9C%AC%E8%BA%AB%E7%9A%84%E8%A7%84%E5%BE%8B)
    - [个人的`Vim`入坑路径](#%E4%B8%AA%E4%BA%BA%E7%9A%84vim%E5%85%A5%E5%9D%91%E8%B7%AF%E5%BE%84)
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
    - [`Vim`打开文件乱码问题](#vim%E6%89%93%E5%BC%80%E6%96%87%E4%BB%B6%E4%B9%B1%E7%A0%81%E9%97%AE%E9%A2%98)
    - [`Vim`字体设置](#vim%E5%AD%97%E4%BD%93%E8%AE%BE%E7%BD%AE)
    - [查看所有的`Vim Map`](#%E6%9F%A5%E7%9C%8B%E6%89%80%E6%9C%89%E7%9A%84vim-map)
    - [`crontab -e`修改失败](#crontab--e%E4%BF%AE%E6%94%B9%E5%A4%B1%E8%B4%A5)
    - [`Vim`中文分词支持的问题](#vim%E4%B8%AD%E6%96%87%E5%88%86%E8%AF%8D%E6%94%AF%E6%8C%81%E7%9A%84%E9%97%AE%E9%A2%98)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

## 序

### `Vim` vs. `Emacs`

一上来就要说一个『宗教性』问题，很危险啊！ :smile: 这节不会说2个编辑器有什么不好，再者自己并不熟悉`Emacs`，只说自己了解到的一点感觉。

> `Vim`和`Emacs`：编辑器之神和神的编辑器。 :performing_arts:

上面的这句调侃不重要，重要的是效率:heavy_exclamation_mark:

个人没入`Emacs`圈，牛掰编辑器先入的是`Vim`。自己作为一个`Emacs`圈外人，对于两者对比的感觉是：

- `Vim`则是先直接在编辑理念上思考很深。
	- 契合了编辑器之『神』的说法。
	- `Vim`提供了一套面向编辑的语言，像
		- `diw`：`delete in word`，删除光标所在单词。`dd`：2个重复命令是对行操作，删除行。
		- `x`：删除一个字符，`2x`：删除2个字符。
		- 一旦你熟悉习惯这门语言，编辑的过程就是思考的过程。
		- 另外，这门语言本身就是可编程的（即编程语言），像上面用数字重复，以及可以用`norm`命令或是宏把指令脚本化。这里不展开了。
- `Emacs`，平台理念很深，带动了编辑理念。
	- 契合了『神』的编辑器这个说法。只要你喜欢可以把`Emacs`打造成`Vim`，当然`Emacs`也提供一套自己编辑风格，基于组合快捷键，现在各种软件都提供快捷键来加速操作，尤其是程序员的`IDE`更是重度依赖熟练的使用快捷键。
	- 关于`Emacs`的平台特质可以看看文章：
		- [从`Vim`到`Emacs`到`Evil`](http://ceyes.github.io/2015-01/from-Vim-to-Emacs/)  
			`Emacs`只是个强大的平台，提供各种定制来满足每个人的不同需求。所以Thanks `Evil`，我已把`Emacs` 打造成了理想的『`Vim`化的`Emacs Editor`』，我可以纵情使用更方便的方式来工作。
		- [程序员的编辑器 —— `Vim`](forwarded-articles/editor-for-programmer.md)，也提到了一点：  
			`vi`追求的是快捷——启动程序迅速，编辑文本高效，功能专注，而`Emacs`追求的是功能的丰富强大以及集成带来的方便，在`Emacs`里头可以发邮件，上新闻组，听`MP3`，浏览网页，玩游戏，几乎可以`login` -> `emacs` -> `logout`了 :-)，`vi`和`Emacs`都是程序员的编辑器，相比而言，`Emacs`更是提供了一种程序员的生活氛围。

### 关于编辑本身

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

上面『打字指法』和『编辑器』的顺序重要的，如果你还不能 **_盲打_**，那么不要想着要找一个的编辑器就能高效了！ :dancers:

## 学习资料

![](images/learn-vim.jpg)

### 关于『学习』本身的规律

- 学习一样新事物的先进，不在于刚开始看到的点，而在于理解一套方法（整套的方法体现蕴含在背后的理念）。
- 上手新事物必然先经历一个能力下降阶段，因为你要放弃你所熟悉的，重新接纳新的一套方法。
- 有下面想法同学必然禁锢于原地踏步：
	- 不愿去理解理念（整套方法），而是用当前熟悉自己的技能点去比新事物的点。
	- 不愿接受上手新事物的学习成本和先要经历一个能力下降阶段。

### 个人的`Vim`入坑路径

1. 看一下`Vim`整体评论性文章，觉得值得入门上手。  
	这点基本不是问题，`Vim`名声在外，问题其实是入门门槛。
1. 通过`vimtutor`，上手了解些基本操作。这时候心理上要注意：
	- 这只是了解基本，不要认为这一步可以在日常中方便的使用了。
	- 让自己可以在`Vim`环境生存下来。
1. 系统学习，边看[《`Vim`实用技巧 - 以思维的速度编辑文本》](http://book.douban.com/subject/25869486/)边操作，完成实践和理念储备。  
	这一步我保持一个相对慢速但持续的过程，两三周时间。
1. 配置上[`spf13-vim`](https://github.com/spf13/spf13-vim)，但舒适强大的`Vim`环境。  
	很多人不推荐这么做，我比较实用，实用就做了。中间会去填`spf13-vim`可能一些坑。
1. 了解一些经典插件并实战，如[`surround`](https://github.com/tpope/vim-surround)。

### 文章/讨论

- [Why `Vim` is awesome](http://federicoramirez.name/why-vim-is-awesome/)
- [`VIM` is awesome — But don’t overdo it](https://medium.com/@PhilPlckthun/vim-is-awesome-but-dont-overdo-it-c03594e6bb5b#.hyy2nhhe9)  
	过犹不及，再好的东西，也要明白什么时候不合适，这是反而说明是深的理解。
- [简明`Vim` 练级攻略 - coolshell.cn](http://coolshell.cn/articles/5426.html)  
	快速逐步上手介绍。
- [Coming Home to `Vim`](http://stevelosh.com/blog/2010/09/coming-home-to-vim/)  
	快速上手使用。为什么使用`Vim`/`Vim`使用感觉/上手的高效配置/好用的插件。
- [普通人的编辑利器 —— `Vim`](forwarded-articles/editor-for-mortal.md) / [程序员的编辑器 —— `Vim`](forwarded-articles/editor-for-programmer.md)  
	这2篇文章以普通用户/程序员的视角，短短一篇文章让你感受`Vim`的风格、能力和一致性设计。  
	以非系统学习方式，获得偏整体了解的好文章！
- [从`Vim`到`Emacs`到`Evil`](http://ceyes.github.io/2015-01/from-Vim-to-Emacs/)  
	`Emacs`只是个强大的平台，提供各种定制来满足每个人的不同需求。所以Thanks `Evil`，我已把`Emacs` 打造成了理想的『`Vim`化的`Emacs Editor`』，我可以纵情使用更方便的方式来工作。 
- [提高`Vim`使用效率的 12 个技巧](http://blog.jobbole.com/87481/)
- [Awesome `Vim` Plugins](https://reinteractive.net/posts/166-awesome-vim-plugins)
- 池建强的BLOG：『谁说Vim不是IDE？』系列：
	- [1. 概述、编程人生、使用场景](http://www.cnblogs.com/chijianqiang/archive/2012/10/30/vim-1.html)
	- [2. 环境配置、基本概念](http://www.cnblogs.com/chijianqiang/archive/2012/10/31/vim-2.html)
	- [3. 常用插件](http://www.cnblogs.com/chijianqiang/archive/2012/11/06/vim-3.html)
- 知乎上的一些话题（看一下讨论扩展一下了解）
	- [有哪些编程必备的 `Vim` 配置？ - 知乎](https://www.zhihu.com/question/19989337)
	- [到底 `VIM` 能配置到多强大的程度？ - 知乎](https://www.zhihu.com/question/20151659)
	- [为什么不少程序员极度推崇 `Vim` 和 `Emacs`，却对 `IDE` 嗤之以鼻？ - 知乎](https://www.zhihu.com/question/21504638)

### 上手

- `vimtutor`

[<img src="images/vi-vim-cheat-sheet-sch-preview.gif" width="256" align="right">](https://raw.githubusercontent.com/oldratlee/vim-practice/master/images/vi-vim-cheat-sheet-sch.gif)

### 速查

内容比较精简且有中文版的：

1. [`Vim` Cheat Sheet中文版 - vim.rtorr.com](http://vim.rtorr.com/lang/zh_cn/)
1. Graphical `vi`/`Vim` Cheat Sheet and Tutorial中文版（右图，点击看大图）  
	该图的[来源链接](http://blog.ngedit.com/vi-vim-cheat-sheet-sch.gif)，[官网](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)中文版。 # 这张图你肯定在别人桌子上见过 :smile:

内容比较丰富的：

[<img src="images/beautiful-vim-cheat-sheet-preview.png" width="256" align="right">](https://raw.githubusercontent.com/oldratlee/vim-practice/master/images/beautiful-vim-cheat-sheet.png)

1. Beautiful `Vim` Cheat-Sheet （右图，点击看大图）  
	\# 个人觉得这个是信息表达最好的一个！ :cupid::sparkling_heart: 该图的[来源链接](http://i.imgur.com/YLInLlY.png)，这个Sheet Cheat的[评论](https://www.reddit.com/r/vim/comments/32r85c/this_is_my_favorite_vim_cheat_sheet_does_anyone/)和[官网](http://vimcheatsheet.com/)。
1. [Cheat Sheet - michael.peopleofhonoronly.com](http://michael.peopleofhonoronly.com/vim/)

Cheat Sheet有几个就够用了，别多看了你～ 当然还有[更多Vim Cheat Sheet](more-cheat-sheet.md) :joy:

### 系统学习

1. `Vim` user manual/reference，即是`Vim`的内置帮助系统，内容丰富！！  
	中文版 <http://sourceforge.net/projects/vimcdoc/files/pdf-manual/>
	1. 学会用`Vim`的内置帮助 `:h` `:h 'option'` `:h command` `:h :ex_command` `:h ctrl-w`
	1. `Vim`帮助系统的帮助，即如何使用`Vim`的帮助系统： `:h helphelp`
1. 个人整理的 [`Vim`书籍豆列](http://www.douban.com/doulist/41500790/)
	1. 个人先看的是[《`Vim`实用技巧 - 以思维的速度编辑文本》](http://book.douban.com/subject/25869486/)  
		以编辑理念和实践模式为纲介绍，推荐之。  
		**_词句共灵感一射，编辑与思考齐飞！_**
	1. [《Learning the `vi` and `Vim` Editors》](http://book.douban.com/subject/3767413/)，行文稳健（很合我的风格）：
		1. 先介绍基本功能再说明如何组合技术，从熟悉到领会。
		1. 再介绍基本编辑器（`vi`/`ex`）再说明`Vim`，从历史发展的过程更能深入理解功能适用场景。
		1. 还介绍`vi`/`Vim`的周边信息，如`vi`/`Vim`的名家名言，各个变种，`vi`/`Emacs`的文化等等
1. [vim-galore - Everything you need to know about `Vim` ![](https://img.shields.io/github/stars/mhinz/vim-galore.svg?style=social&label=Star&maxAge=3600)](https://github.com/mhinz/vim-galore)  
	`Vim`方方面面资料汇总。

`Vim`配置/插件的资源
-------------------------

- [`spf13-vim` - a distribution of `Vim` plugins and resources ![](https://img.shields.io/github/stars/spf13/spf13-vim.svg?style=social&label=Star&maxAge=3600)](https://github.com/spf13/spf13-vim) - `Vim`的配置框架和配置集合。
	- 包含很多插件/主题，无论是小白还是高手，省时好用是王道，用起来。
	- 直接使用，配置的效果和包含的插件 已经很不错了。
	- `spf13-vim`首先是个`Vim`**配置框架**，水准尽显！
- [Janus: Vim Distribution ![](https://img.shields.io/github/stars/carlhuda/janus.svg?style=social&label=Star&maxAge=3600)](https://github.com/carlhuda/janus)
	- 又一个`Vim`配置版本！
- [The Ultimate vimrc ![](https://img.shields.io/github/stars/amix/vimrc.svg?style=social&label=Star&maxAge=3600)](https://github.com/amix/vimrc) - Over the last 8 years I have used and tweaked Vim.
	- 作者 **_8年_** 在`Vim`配置上的积累。
	- 绝对值得参考学习！
	- 因为不是框架，所以我会选`spf13-vim`作为我的配置主方式。
- [Maximum Awesome ![](https://img.shields.io/github/stars/square/maximum-awesome.svg?style=social&label=Star&maxAge=3600)](https://github.com/square/maximum-awesome) - 三架马车`Vim`、`tmux`和`iTerm 2`的配置。
	- 值得参考！
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
	- 一定要 **_版本控制_** 起来！
	- 可以偷借你朋友的配置文件（`dotfiles`），或是借鉴 <https://github.com/thoughtbot/dotfiles>
1. 通过官方的`vimtutor`定期适量的学习 / 通过游戏<http://vim-adventures.com/>来学习～
1. 通过看高手的操作视频方法来学习
	- [vimcasts.org](http://vimcasts.org/)
	- [upcase.com/vim](https://upcase.com/vim)

### 7 Habits For Effective Text Editing 2.0

[Youtube视频地址](https://www.youtube.com/watch?v=p6K4iIMlouI)，2007-02-13，`Vim`作者 **_Brian Moolenaar_** 在`Google`做的演讲，讲解了编辑器的选择、达到高效编辑的方法和理念。

#### 1. 编辑器的选择

1. 如果你已经熟悉精通了一个编辑器，挺好的。这里不会讨论『`Vim`比`Emacs`更好』这个问题，但你可能会觉得`Emacs`并不爽～ :joy:
1. 但不要使用像`Notepad`这样简陋的编辑器，你浪费了大量的生命！ :astonished:
1. 要么用一个觉得的爽的编辑器，要么转用`Vim`吧～ :stuck_out_tongue_winking_eye: 除此再没有其它的出路！（_There is NO other RULE!_）

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

**_问题说明：_**

本来`Vim`是有模式的（`Normal/Command/Insert/Replace/Visual/...`），再加上中文需要输入法切换（你处在中文输入还是英文输入状态），中文编辑需要在脑子记住当前是哪个状态的，个人觉得这很蛋疼。

理想的状态期望：

- 当切换到如`Normal/Command`模式时，自动切换到英文输入法。
- 切回到`Insert`模式时，还原文字输入时所用的输入法状态（中文输入/英文输入）。

**_解决方法：_**

解法参见[`@CodeFalling`](https://github.com/CodeFalling)的[完美解决 `Mac` 下 `Vim/Emacs` 的输入法切换问题](https://codefalling.com/2015/11/02/fcitx-vim-for-OS-X/)：

1. 安装配合工具[`fcitx-remote-for-osx`](https://github.com/CodeFalling/fcitx-remote-for-osx)
2. 安装`Vim`插件[`fcitx-vim-osx`](https://github.com/CodeFalling/fcitx-vim-osx)

PS: Thanks for your **_PERFECT_** works! [`@CodeFalling`](https://github.com/CodeFalling)

### `Vim`打开文件乱码问题

**_问题说明：_**

`Vim`打开文件是乱码，常见的原因是编码识别错误。

**_解决方法：_**

可以在`.vimrc`配置文件中设置好`Vim`的用于尝试识别的编码序列，依次使用序列中的编码直到这个编码可以正确显示文件中的字符：

```vim
" 需要配置到 .vimrc 中
set fileencodings=ucs-bom,utf-8,gb18030,utf-16le,big5,euc-jp,euc-kr,latin1
```

如果仍然识别成乱码（比如文件包含多种编码的字符，一定会有乱码），可以在命令模式显式指定编码重新打开文件，命令如下：

```vim
" 用UTF8编码重新打开
:e ++enc=utf-8
" 用GBK编码重新打开
:e ++enc=gbk
" 在GB18030字符集是GBK的超集，上面是为了方便键入使用GBK名
```

更多原因解析和处理方法参见[@滇狐](http://edyfox.codecarver.org/html/index.html)的文章[`VIM`文件编码识别与乱码处理](http://edyfox.codecarver.org/html/vim_fileencodings_detection.html)，讲得深入浅出、鞭辟入里！

PS:  
像`Vim`一样，字符编码也是一个很具计算机风味的话题，这里不解释，如果不清楚可以自己搜索研究一下。

### `Vim`字体设置

**_问题说明：_**

合适字体可以方便识别，提高效率和心情，不能说不重要！ :kiss:

- 对在控制台中运行的`Vim`命令，字体由终端配置。
- `GUI Vim`由`Vim`自己来配置。

`Mac`下，终端常用的是`iTerm`/`terminal`应用，`GUI Vim`用的是`MacVim`应用。

**_解决方法：_**

详见单独一页的说明：[设置`Vim`字体](font-config/README.md)。

### 查看所有的`Vim Map`

**_问题说明：_**

下面的场景下，会想查看所有的`Vim Map`：

1. `Vim`可以定制自己命令，为了不重写已有的快捷键（`Map`）
1. 也看看想要功能是不是已经有`Map`了

**_解决方法：_**

```vim
redir > map.txt | silent map | redir END
" 如果文件已经存在加上!来覆盖输出的文件
redir! > map.txt | silent map | redir END
```

### `crontab -e`修改失败

**_问题说明：_**

`crontab`修改后，报`crontab: temp file must be edited in place`出错信息，`crontab`没有修改。

```sh
$ crontab -e
# ... I do my thing in vim & :wq
"crontab.9ZcXiFaawt" 6L, 203C written
crontab: temp file must be edited in place
```

**_解决方法：_**

在`.vimrc`配置文件中设置，对于`crontab`文件不使用备份文件：

```vim
" 需要配置到 .vimrc 中
autocmd BufNewFile,BufRead crontab.* set nobackup | set nowritebackup
```

更多说明参见：

- http://vi.stackexchange.com/questions/137
- https://jamiecook.wordpress.com/2013/02/10/using-vim-to-edit-crontab-on-mac-osx/

### `Vim`中文分词支持的问题

**_问题说明：_**

不像英文，中文的词的分离没有像空格这样明显分隔，词相关的移动变得很麻烦。

**_解决方法：_**

目前还 **_没有_** 找到解法。总得来说，这个问题不大，可以替代的做法：

- `Hack`/加速系统的按键重复后，可以简单地用`hjkl`在小/大范围内快速导航。
- 用词以外的方式也可以比较快地完成导航，如
	- 在大范围的按段跳、按页跳（`CTRL-D/CTRL-F`）。
	- 按搜索跳
		- `fz/Fz/tz/Tz`
		- `n/N`

`Vim`分词的相关资源

- [`Vim`与中文分词 - google group](https://groups.google.com/forum/#!msg/pongba/RXVqM4sKseU/TrCrySBH1HwJ)
- [`Vim`模式下能增加中文分词的支持么？](https://github.com/ghosert/cmd-editor/issues/103)
- [关于`Vim&Emacs`的中文分词相关讨论](https://biergaizi.info/archives/2012/04/1322.html)

　

-------------------------------

[![](images/vim-love.gif)](http://www.vim.org/buttons.php)
