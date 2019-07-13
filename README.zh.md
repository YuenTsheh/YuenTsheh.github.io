# Hux blog 模板

### [我的博客在这里 &rarr;](http://huxpro.github.io)


### 关于收到"Page Build Warning"的email

由于jekyll升级到3.0.x,对原来的pygments代码高亮不再支持，现只支持一种-rouge，所以你需要在 `_config.yml`文件中修改`highlighter: rouge`.另外还需要在`_config.yml`文件中加上`gems: [jekyll-paginate]`.

同时,你需要更新你的本地jekyll环境.

使用`jekyll server`的同学需要这样：

1. `gem update jekyll` # 更新jekyll
2. `gem update github-pages` #更新依赖的包

使用`bundle exec jekyll server`的同学在更新jekyll后，需要输入`bundle update`来更新依赖的包.

参考文档：[using jekyll with pages](https://help.github.com/articles/using-jekyll-with-pages/) & [Upgrading from 2.x to 3.x](http://jekyllrb.com/docs/upgrading/2-to-3/)


## 关于模板(beta)

我的博客仓库——`huxpro.github.io`，是经常修改的，而且还会有人乱提交代码，因此给大家做了一个稳定版的模板。大家可以直接fork模板——`huxblog-boilerplate`,要改的地方我都说明了。或者可以直接下载zip到本地自己去修改。

```
$ git clone git@github.com:Huxpro/huxblog-boilerplate.git
```

**[在这里预览模板 &rarr;](http://huangxuan.me/huxblog-boilerplate/)**

## 各版本特性

##### New Feature (V1.5.2)

* 当你fork了我的仓库之后，还要删掉里面的关于我的文档是不是感到略烦躁呢？**Boilerplate** 模板将帮助你快速开始，方便合并与更新。
* `-apple-system`被添加到了字体规则里面了，这套字体格式能将iOS9默认的新字体**San Francisco**表现的非常漂亮。
* 解决了代码过长自动换行的bug,替换为横向滚动条。详情请见[issue#15](https://github.com/Huxpro/huxpro.github.io/issues/15)

###### 其他历史版本个人觉得没有必要了解，看看英文就行了。



## 支持

* 你可以自由的fork。如果你能将主题作者和 github 的地址保留在你的页面底部，我将非常感谢你。
* 如果你喜欢我的这个博客模板，请在`huxpro.github.io`这个repository点个赞——右上角**star**一下。

## 说明文档

* 开始
	* [环境要求](#environment)
	* [开始](#get-started)
	* [写一篇博文](#write-posts)
* 组件
	* [侧边栏](#sidebar)
	* [迷你关于我](#mini-about-me)
	* [推荐标签](#featured-tags)
	* [好友链接](#friends)
	* [HTML5 演示文档布局](#keynote-layout)
* 评论与 Google/Baidu Analytics
	* [评论](#comment)
	* [网站分析](#analytics) 
* 高级部分
	* [自定义](#customization)
	* [标题底图](#header-image)
	* [搜索展示标题-头文件](#seo-title)

#### Environment

如果你安装了jekyll，那你只需要在命令行输入`jekyll serve`就能在本地浏览器预览主题。你还可以输入`jekyll serve --watch`，这样可以边修改边自动运行修改后的文件。

经 [@BrucZhaoR](https://github.com/BruceZhaoR)的测试，好像两个命令都是可以的自动运行修改后的文件的，刷新后可以实时预览。官方文件是建议安装bundler，这样你在本地的效果就跟在github上面是一样的。详情请见这里：https://help.github.com/articles/using-jekyll-with-pages/#installing-jekyll


#### Get Started

你可以通用修改 `_config.yml`文件来轻松的开始搭建自己的博客:

```
# Site settings
title: Hux Blog             # 你的博客网站标题
SEOTitle: Hux Blog			# 在后面会详细谈到
description: "Cool Blog"    # 随便说点，描述一下

# SNS settings      
github_username: huxpro     # 你的github账号
weibo_username: huxpro      # 你的微博账号，底部链接会自动更新的。

# Build settings
# paginate: 10              # 一页你准备放几篇文章
```

Jekyll官方网站还有很多的参数可以调，比如设置文章的链接形式...网址在这里：[Jekyll - Official Site](http://jekyllrb.com/) 中文版的在这里：[Jekyll中文](http://jekyllcn.com/).

#### write-posts

要发表的文章一般以markdown的格式放在这里`_posts/`，你只要看看这篇模板里的文章你就立刻明白该如何设置。

yaml 头文件长这样:

```
---
layout:     post
title:      "Hello 2015"
subtitle:   "Hello World, Hello Blog"
date:       2015-01-29 12:00:00
author:     "Hux"
header-img: "img/post-bg-2015.jpg"
tags:
    - Life
---

```

#### SideBar

看右边:
![](http://huangxuan.me/img/blog-sidebar.jpg)

设置是在 `_config.yml`文件里面的`Sidebar settings`那块。
```
# Sidebar settings
sidebar: true  #添加侧边栏
sidebar-about-description: "简单的描述一下你自己"
sidebar-avatar: /img/avatar-hux.jpg     #你的大头贴，请使用绝对地址.
```

侧边栏是响应式布局的，当屏幕尺寸小于992px的时候，侧边栏就会移动到底部。具体请见bootstrap栅格系统 <http://v3.bootcss.com/css/>


#### Mini About Me

Mini-About-Me 这个模块将在你的头像下面，展示你所有的社交账号。这个也是响应式布局，当屏幕变小时候，会将其移动到页面底部，只不过会稍微有点小变化，具体请看代码。

#### Featured Tags

看到这个网站 [Medium](http://medium.com) 的推荐标签非常的炫酷，所以我将他加了进来。
这个模块现在是独立的，可以呈现在所有页面，包括主页和发表的每一篇文章标题的头上。

```
# Featured Tags
featured-tags: true  
featured-condition-size: 1     # A tag will be featured if the size of it is more than this condition value
```

唯一需要注意的是`featured-condition-size`: 如果一个标签的 SIZE，也就是使用该标签的文章数大于上面设定的条件值，这个标签就会在首页上被推荐。

内部有一个条件模板 `{% if tag[1].size > {{site.featured-condition-size}} %}` 是用来做筛选过滤的.


#### Friends

好友链接部分。这会在全部页面显示。

设置是在 `_config.yml`文件里面的`Friends`那块，自己加吧。

```
# Friends
friends: [
    {
        title: "Foo Blog",
        href: "http://foo.github.io/"
    },
    {
        title: "Bar Blog",
        href: "http://bar.github.io"
    }
]
```


#### Keynote Layout

HTML5幻灯片的排版：

![](http://huangxuan.me/img/blog-keynote.jpg)

这部分是用于占用html格式的幻灯片的，一般用到的是 Reveal.js, Impress.js, Slides, Prezi 等等.我认为一个现代化的博客怎么能少了放html幻灯的功能呢~

其主要原理是添加一个 `iframe`，在里面加入外部链接。你可以直接写到头文件里面去，详情请见下面的yaml头文件的写法。

```
---
layout:     keynote
iframe:     "http://huangxuan.me/js-module-7day/"
---
```

iframe在不同的设备中，将会自动的调整大小。保留内边距是为了让手机用户可以向下滑动，以及添加更多的内容。


#### Comment

博客不仅支持多说[Duoshuo](http://duoshuo.com)评论系统，也支持[Disqus](http://disqus.com)评论系统。

`Disqus`优点是：国际比较流行，界面也很大气、简介，如果有人评论，还能实时通知，直接回复通知的邮件就行了；缺点是：评论必须要去注册一个disqus账号，分享一般只有Facebook和Twitter，另外在墙内加载速度略慢了一点。想要知道长啥样，可以看以前的版本点[这里](http://brucezhaor.github.io/about.html) 最下面就可以看到。

`多说` 优点是：支持国内各主流社交软件(微博，微信，豆瓣，QQ空间 ...)一键分享按钮功能，另外登陆比较方便，管理界面也是纯中文的，相对于disqus全英文的要容易操作一些；缺点是：就是界面丑了一点。
当然你是可以自定义界面的css的，详情请看多说开发者文档 http://dev.duoshuo.com/docs/5003ecd94cab3e7250000008 。

**首先**，你需要去注册一个账号，不管是disqus还是多说的。**不要直接使用我的啊！**

**其次**，你只需要在下面的yaml头文件中设置一下就可以了。

```
duoshuo_username: _你的用户名_
# 或者
disqus_username: _你的用户名_
```

**最后**多说是支持分享的，如果你不想分享，请这样设置：`duoshuo_share: false`。你可以同时使用两个评论系统，不过个人感觉怪怪的。

#### Analytics

网站分析，现在支持百度统计和Google Analytics。需要去官方网站注册一下，然后将返回的code贴在下面：

```
# Baidu Analytics
ba_track_id: 4cc1f2d8f3067386cc5cdb626a202900

# Google Analytics
ga_track_id: 'UA-49627206-1'            # 你用Google账号去注册一个就会给你一个这样的id
ga_domain: huangxuan.me			# 默认的是 auto, 这里我是自定义了的域名，你如果没有自己的域名，需要改成auto。
```

#### Customization

如果你喜欢折腾，你可以去自定义我的这个模板的 code，[Grunt](gruntjs.com)已经为你准备好了。（感谢 Clean Blog）

JavaScript 的压缩混淆、Less 的编译、Apache 2.0 许可通告的添加与 watch 代码改动，这些任务都揽括其中。简单的在命令行中输入 `grunt` 就可以执行默认任务来帮你构建文件了。如果你想搞一搞 JavaScript 或 Less 的话，`grunt watch` 会帮助到你的。

**如果你可以理解 `_include/` 和 `_layouts/`文件夹下的代码（这里是整个界面布局的地方），你就可以使用 Jekyll 使用的模版引擎 [Liquid](https://github.com/Shopify/liquid/wiki)的语法直接修改/添加代码，来进行更有创意的自定义界面啦！**

#### Header Image

标题底图是可以自己选的，看看几篇示例post你就知道如何设置了。在
  [issue #6 ](https://github.com/Huxpro/huxpro.github.io/issues/6) 中我被问到：怎么样才能让标题底图好看呢？

标题底图的选取完全是看个人的审美了，我也帮不了你。每一篇文章可以有不同的底图，你想放什么就放什么，最后宽度要够，大小不要太大，否则加载慢啊。

但是需要注意的是本模板的标题是**白色**的，所以背景色要设置为**灰色**或者**黑色**，总之深色系就对了。当然你还可以自定义修改字体颜色，总之，用github pages就是可以完全的个性定制自己的博客。

#### SEO Title

我的博客标题是 **“Hux Blog”** 但是我想要在搜索的时候显示 **“黄玄的博客 | Hux Blog”** ，这个就需要SEO Title来定义了。

其实这个SEO Title就是定义了<head><title>标题</title></head>这个里面的东西和多说分享的标题，你可以自行修改的。

## 致谢

1. 这个模板是从这里[IronSummitMedia/startbootstrap-clean-blog-jekyll](https://github.com/IronSummitMedia/startbootstrap-clean-blog-jekyll)  fork 的。 感谢这个作者
2. 感谢[@BrucZhaoR](https://github.com/BruceZhaoR)的中文翻译 

3. 感谢 Jekyll、Github Pages 和 Bootstrap!





# Darian-custome-update

请直接打开：链接：

```

```





##### index.html

```
---
layout: page
title: Darian Blog
author: Darian
description: "Talking is cheap, show me your code"
---
```



##### _includes/head.html

```
<!-- Favicon -->
<link rel="shortcut icon" href="{{ site.baseurl }}/img/favicon.ico">
```

##### _config.yml

```yaml
# Site settings
title: darian
SEOTitle: 技术博客
header-img: img/home-bg.jpg
email: 
description: ""
keyword: "darian"
url: ""              # your host, for absolute URL
baseurl: ""                             # for example, '/blog' if your blog hosted on 'host/blog'

post:
  author: darian

# Publish posts or collection documents with a future date.
future: true

# SNS settings
RSS: true
weibo_username:     darian
github_username:    darian
twitter_username:   darian

# Sidebar settings
sidebar: true                         Sidebar.
# 头像下边的文字
sidebar-about-description: "单纯的技术交流"
# 头像地址
sidebar-avatar: /img/darian.jpg

# Friends
# 友情链接，连接了 Mercyblitz 的博客
friends: [
     {
        title: "强烈推荐：mercyblitz Blog",
        href: "https://mercyblitz.github.io/"
    }
]
```



##### _includes/nav.html

```
<!-- Collect the nav links, forms, and other content for toggling -->
<div id="huxblog_navbar">
    <div class="navbar-collapse">
        <ul class="nav navbar-nav navbar-right">
            <li>
                <a href="{{ site.baseurl }}/">首页</a>
            </li>
            <li>
                <a href="{{ site.baseurl }}/about/">关于我</a>
            </li>
            <li>
                <a href="{{ site.baseurl }}/archive/">归档文章</a>
            </li>
            <li>
                <a href="{{ site.baseurl }}/portfolio/">参与过的项目</a>
            </li>
        </ul>
    </div>
</div>
<!-- /.navbar-collapse -->
```



### 文章名字规则

2018-01-01-第一篇实例文章.md



如何构建一个- 中文-英文同时可以的文章

### 如何发布一篇文章-中文-英文都可以



Hux    的  - 饿了吗PWA实践

```
< -- https://github.com/Huxpro/huxpro.github.io/blob/master/_posts/2017-07-12-upgrading-eleme-to-pwa.markdown -- >
```



参见- 

```
---
layout:       post
title:        "饿了么的 PWA 升级实践"
subtitle:     "Upgrading Ele.me to Progressive Web App"
date:         2017-07-12 12:00:00
author:       "Hux"
header-img:   "img/in-post/post-eleme-pwa/eleme-at-io.jpg"
header-mask:  0.3
catalog:      true
multilingual: true
tags:
    - Web
    - PWA
---

<!-- Chinese Version -->
<div class="zh post-container">
    {% capture about_zh %}{% include posts/2017-07-12-upgrading-eleme-to-pwa/zh.md %}{% endcapture %}
    {{ about_zh | markdownify }}
</div>

<!-- English Version -->
<div class="en post-container">
    {% capture about_en %}{% include posts/2017-07-12-upgrading-eleme-to-pwa/en.md %}{% endcapture %}
    {{ about_en | markdownify }}
</div>

```



- 文章发在 `_include` / 下



##### 效果图 





- 下拉框
  - 中文
  - 英文





## 添加项目：

### portfolio/index.html

```html
<header>
    <!-- <img width="175" height="175" style="border-radius:50%;" src="/img/avatar-hux-ny.jpg"> -->
    <!-- <h1>Hux</h1> -->
    <img width="175" height="175" style="border-radius:50%;" src="/img/darian.jpg">
    <h1>Darian</h1>
</header>


<li>
    <div class="cbp_tmlabel">
        <h2 id="boxoffice">爱医生智慧医疗</h2>
        <time>2018.03</time>
        <!-- portfolio/images -->
        <img src="images/work-aiyisheng.png">
        <ul>
            <li>
                北京爱医生智慧医疗科技有限公司是君正集团全资子公司，与世界科技巨头IBM公司深度战略合作，应用世界领先的认知医疗和人工智能技术，致力于打造国内创新智慧医疗平台爱医生携手医疗健康行业生态合作伙伴，基于人工智能技术和医疗健康数据，共同推动中国医疗健康领域创新，致力于成为中国家庭全面健康管理的顾问，基层医疗机构全科医生的助手，助力分级诊疗政策落地和健康中国战略实施
            </li>
            <li class="skill">
                <span class="i-vue"></span>
                <span class="i-spring-framework"></span>
                <span class="i-spring-boot"></span>
                <span class="i-spring-cloud"></span>
                <span class="link"><a target="_blank" href="http://aiyisheng.com.cn/index.html">See it</a></span>
            </li>
        </ul>
    </div>
</li>
```



#### 设计 项目下边的 log- Log

添加图片

- <!-- portfolio/images -->

- 设计 JS

- \portfolio\css\timeline.css

  - ```css
    .i-vue:before {
    	content: "";
        display: block;
        width: 40px;
        height: 40px;
        background: url("../images/logo-vue.png") 50% 50% no-repeat;
        background-size: 20px;
    }
    
    .i-spring-framework:before {
    	content: "";
    	display: block;
    	width: 40px;
    	height: 40px;
    	background: url("../images/logo-spring-framework.png") 50% 50% no-repeat;
    	background-size: 22px;
    }
    
    .i-spring-boot:before {
    	content: "";
    	display: block;
    	width: 40px;
    	height: 40px;
    	background: url("../images/logo-spring-boot.png") 50% 50% no-repeat;
    	background-size: 22px;
    }
    
    .i-spring-cloud:before {
    	content: "";
    	display: block;
    	width: 40px;
    	height: 40px;
    	background: url("../images/logo-spring-cloud.png") 50% 50% no-repeat;
    	background-size: 22px;
    }
    
    .i-logo-spring-data-flow:before {
    	content: "";
    	display: block;
    	width: 40px;
    	height: 40px;
    	background: url("../images/logo-spring-data-flow.png") 50% 50% no-repeat;
    	background-size: 22px;
    }
    ```

    - ```
      i-vue
      
      i-spring-framework
      
      i-spring-boot
      
      i-spring-cloud
      
      i-logo-spring-data-flow
      ```

    - 

### 添加 WeChat

- `_config.yml`  添加 weChat_username

- `_includes/sns-links.html`  

  ```html
    {% if site.weChat_username %}
    <li>
      <a href="https://twitter.com/{{ site.twitter_username }}">
        <span class="fa-stack fa-lg">
          <i class="fa fa-circle fa-stack-2x"></i>
          <i class="fa fa-twitter fa-stack-1x fa-inverse"></i>
        </span>
      </a>
    </li>
    {% endif %}
  ```

  

- 