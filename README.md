Vim Practice
=================================

<!-- START doctoc generated TOC please keep comment here to allow auto update -->
<!-- DON'T EDIT THIS SECTION, INSTEAD RE-RUN doctoc TO UPDATE -->


- [学习资料](#%E5%AD%A6%E4%B9%A0%E8%B5%84%E6%96%99)
  - [文章/讨论](#%E6%96%87%E7%AB%A0%E8%AE%A8%E8%AE%BA)
  - [上手](#%E4%B8%8A%E6%89%8B)
  - [速查](#%E9%80%9F%E6%9F%A5)
  - [系统学习](#%E7%B3%BB%E7%BB%9F%E5%AD%A6%E4%B9%A0)
- [`vim`配置/插件的资源](#vim%E9%85%8D%E7%BD%AE%E6%8F%92%E4%BB%B6%E7%9A%84%E8%B5%84%E6%BA%90)
- [分享视频及其笔记](#%E5%88%86%E4%BA%AB%E8%A7%86%E9%A2%91%E5%8F%8A%E5%85%B6%E7%AC%94%E8%AE%B0)
  - [Learning Vim in a Week](#learning-vim-in-a-week)
- [个人关心的问题](#%E4%B8%AA%E4%BA%BA%E5%85%B3%E5%BF%83%E7%9A%84%E9%97%AE%E9%A2%98)
  - [中文输入法在`vim`便利切换的问题](#%E4%B8%AD%E6%96%87%E8%BE%93%E5%85%A5%E6%B3%95%E5%9C%A8vim%E4%BE%BF%E5%88%A9%E5%88%87%E6%8D%A2%E7%9A%84%E9%97%AE%E9%A2%98)
  - [`vim`中文分词的支持](#vim%E4%B8%AD%E6%96%87%E5%88%86%E8%AF%8D%E7%9A%84%E6%94%AF%E6%8C%81)

<!-- END doctoc generated TOC please keep comment here to allow auto update -->

学习资料
------------------------

### 文章/讨论

- [Why Vim is awesome](http://federicoramirez.name/why-vim-is-awesome/)
- [Awesome Vim Plugins](https://reinteractive.net/posts/166-awesome-vim-plugins)
- [VIM is awesome— But don’t overdo it](https://medium.com/@PhilPlckthun/vim-is-awesome-but-dont-overdo-it-c03594e6bb5b#.hyy2nhhe9)  
	过犹不及，再好的东西，也要明白什么时候不合适，这是反而说明是深的理解。

### 上手

- `vimtutor`

### 速查

内容比较少，且有中文版的：

- [Vim Cheat Sheet中文版 - vim.rtorr.com](http://vim.rtorr.com/lang/zh_cn/)
- [Graphical vi-vim Cheat Sheet and Tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)  
	中文版 <http://blog.ngedit.com/vi-vim-cheat-sheet-sch.gif> # 这张图你肯定在别人桌子上见过 :smile:

内容比较多的：

- Beautiful Vim Cheat-Sheet http://i.imgur.com/YLInLlY.png  
	\# 这个Sheet Cheat的[评论](https://www.reddit.com/r/vim/comments/32r85c/this_is_my_favorite_vim_cheat_sheet_does_anyone/)和[官网](http://vimcheatsheet.com/)。
- [Cheat Sheet - michael.peopleofhonoronly.com](http://michael.peopleofhonoronly.com/vim/)

Cheat Sheet有几个就够用了，别多看了你～ 当然还有[更多Vim Cheat Sheet](more-cheat-sheet.md) :joy: 

### 系统学习

- `vim` user manual/reference   
	中文版 <http://sourceforge.net/projects/vimcdoc/files/pdf-manual/>
- 个人整理的[`Vim`书籍豆列](http://www.douban.com/doulist/41500790/)
    - 个人先看的是[Vim实用技巧](http://book.douban.com/subject/25869486/)，推荐之。

`vim`配置/插件的资源
-------------------------

- [`spf13-vim` - a distribution of vim plugins and resources](https://github.com/spf13/spf13-vim) - `vim`的配置框架和配置集合。
	- 包含很多插件/主题，无论是小白还是高手，省时好用是王道，用起来。 这个项目有 ~7K star！
	- 直接使用，配置的效果和包含的插件 已经很不错了。
	- `spf13-vim`首先是个`vim`**配置框架**，水准尽显！
- [The Ultimate vimrc](https://github.com/amix/vimrc) - Over the last 8 years I have used and tweaked Vim.
	- 作者_8年_在`vim`配置上的积累。这个项目有 ~5K star！
	- 绝对值得参考学习！
	- 因为不是框架，所以我会选`spf13-vim`作为我的配置主方式。
- [Maximum Awesome](https://github.com/square/maximum-awesome) - 三架马车`vim`、`iTerm 2`和`tmux`的配置。
	- 值得参考，这个项目有 4K+ star！
- [Vim Awesome - a comprehensive, accurate, and up-to-date directory of Vim plugins](http://vimawesome.com/)

分享视频及其笔记
--------------------------

### Learning Vim in a Week

[Youtube视频地址](https://www.youtube.com/watch?v=_NUO4JEtkDw)，讲解了入门`vim`时

- 观念上的改变/注意事项
	- 总有更好的做法
	- 学习`vim`是个持续的过程，可以不断提高能力，进而逐步提升效率。
- 不要在平时的工作使用中开始学习`vim`！因为 工作紧急需要的效率 与 `vim`刚开始学习时摸索的低效 有矛盾！
- `vim`命令记忆法

还给出实用的Tips：

1. `Hack`（定制）你的键盘
	- 通过[Seil](https://pqrs.org/osx/karabiner/seil.html.en)修改`Caplock`键成`ECS`键
	- 通过[karabiner](https://pqrs.org/osx/karabiner/)修改键盘重复前延迟和加速重复频率，以快速地在`vim`中导航
1. [Graphical vi-vim Cheat Sheet and Tutorial](http://www.viemu.com/a_vi_vim_graphical_cheat_sheet_tutorial.html)  
	中文版 <http://blog.ngedit.com/vi-vim-cheat-sheet-sch.gif>
1. `.vimrc` - 你的新朋友！
	- **一定要版本版本控制起来**！
	- 可以偷借你朋友的配置文件（`dotfiles`），或是借鉴 <https://github.com/thoughtbot/dotfiles>
1. 通过官方的`vimtutor`定期适量的学习 / 通过游戏<http://vim-adventures.com/>来学习～
1. 通过看高手的操作视频方法来学习
	- [vimcasts.org](http://vimcasts.org/)
	- [upcase.com/vim](https://upcase.com/vim)

个人关心的问题
--------------------------

欢迎高手指点！请提交[Issue](https://github.com/oldratlee/vim-pratice/issues)。

### 中文输入法在`vim`便利切换的问题

本来`vim`是有模式的（`Normal/Insert/Replace/Visual/...`），再加上中文需要输入法切换（你处在中文输入还是英文输入状态），中文编辑需要在脑子记住当前是哪个状态的，个人觉得这很比较蛋疼。

目前还**_没有_**找到好的解法。

### `vim`中文分词的支持

不像英文，中文的词的分离没有像空格这样明显分隔，词相关的移动变得很麻烦。

目前还**_没有_**找到好的解法。

- [Vim与中文分词 - google group](https://groups.google.com/forum/#!msg/pongba/RXVqM4sKseU/TrCrySBH1HwJ)
- [Vim模式下能增加中文分词的支持么？](https://github.com/ghosert/cmd-editor/issues/103)
- [关于Vim&Emacs的中文分词相关讨论](https://biergaizi.info/archives/2012/04/1322.html)
