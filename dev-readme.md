# 开发记录

## 模板引擎
项目配置使用了nunjucks模板引擎

语法参考 **[地址](https://mozilla.github.io/nunjucks/cn/templating.html#part-2cf2ea1f8614528d)**

### 开发工具插件

安装nunjucks对应的vscode的插件。

### 语法记录

```html
{% 类似html的尖括号 %}

注释：
{# 注释内容 #}

{% include 包含文件%}
```


## 使用Sass

在public的目录下的css目录下面，有sass文件对应的css文件，所有的文件是直接对应的。

使用了gulp直接配置sass的编译工作
