# NJU Thesis 2021

[![njuthesis](https://img.shields.io/badge/njuthesis-latex-blue)](https://git.nju.edu.cn/nju-lug/nju-latex-templates)
[![overleaf](https://img.shields.io/badge/overleaf-supported-brightgreen)](https://tex.nju.edu.cn)

南京大学本科生毕业论文LaTex模板 2021

[NJU GitLab同步镜像](https://git.nju.edu.cn/nju-lug/nju-latex-templates/NJUThesis2021)

## 说明

> 如果要在南京大学[Overleaf](tex.nju.edu.cn)中使用，请先使用<font color="red">winfonts</font>，linuxfonts和adobefonts暂时没有安装完全，会出现timeout。

- 本版本从AnyiRao仓库fork修改而来

- 原作者RAY个人主页<http://anyirao.com>

- 原作者个人仓库<https://github.com/AnyiRao/NJUThesis2018>

- README从原文档改写而来

## 鸣谢

- 本模板由学长学姐的南京大学硕士博士学位论文模板改编而来。

## 声明

- 此模版用于生成符合南京大学学位论文排版要求和相应的国家规范、行业标准的学位论文。

- 基于本科生院的论文撰写规范修改。

- 限于精力未提供**详细**使用说明。

- 本模板旨在为同学提供毕业论文书写的方便，如有模板问题或者版权问题，请联系作者。

## 使用说明

### 环境配置

GitHub提供打包下载，如果GitHub速度过慢，可以去[NJU GitLab同步镜像](https://git.nju.edu.cn/nju-lug/nju-latex-templates/NJUThesis2021)下载。

下表是目前实测可用的环境。如果有其他可用环境或不可用的环境，欢迎补充。

> macOS系统可以正常编译`tex`文件, 但由于字体原因, 实际输出结果会与其他环境有细微不同, 请谨慎使用.

| OS           | Tex          | 测试情况 |
| ------------ | ------------ | -------- |
| Windows 10   | TexLive 2021 | ✔ |
| Windows 10   | TexLive 2020 | ✔        |
| Windows 10   | MikTex 21.2  | ✔        |
| Ubuntu 20.04 | TexLive 2021 | ✔       |
| Ubuntu 20.04         | TexLive 2020 | ✔ (e8502e版) |
| Ubuntu 18.04         | TexLive 2017 | ✔            |
| macOS Big Sur 11.3.1 | TexLive 2020 | ✔            |
| tex.nju.edu.cn | Overleaf | ✔ |

- Mac系统请使用为MacTex(TexLive+Texshop)-->XeLatex，Windows系统请使用TexLive(TeXworks/Vscode)-->XeLatex，其他环境下还未测试。

- 点击这里下载TexLive：[TexLive下载地址][TexLive]

- 点击这里下载MacTex：[MacTex下载地址][MacTex]

### 注意事项

- 使用时应该采用XeLaTex->BibTex->XeLaTex->XeLaTex的顺序编译，以生成正确的参考文献目录和编号。

- 编译产物为 sample.pdf。

- 推荐使用 VSCode + LaTeX Workshop（插件）完成论文编写，也可以使用其他编辑器，如 texworks、texstudio。

  本项目在 `.vscode/` 中附带一份乞丐版配置，可以直接使用。

- 如果直接使用文本编辑器，也可以在完成编写后，执行项目根目录的编译脚本，以获取编译后的 PDF。

  - Windows：
  
    ```powershell
    .\compile.bat
    ```

  - Linux / macOS：
  
    ```shell
    ./compile.sh
    ```

- **不同的平台需要加载的字体不同，请根据tex文件中的提示使用不同的参数**。如果遇到字体无法加载的问题请确认系统装有相应字体。不同平台下请反注释相应的代码，例如在windows下，应为：

  ```latex
  %% 如需Adobe字体请用
  %\documentclass[adobefonts]{njuthesis}
  %% MacOS系统请用
  %\documentclass[macfonts]{njuthesis}
  %% Windows系统请用（默认）
  \documentclass[winfonts]{njuthesis}
  %% Linux系统请用
  %\documentclass[linuxfonts]{njuthesis}
  ```

### 常见问题

如果有其他问题，欢迎在 issue 里或加入QQ群991559926进行讨论。

#### 安装与配置

1. **如何选择 TexLive / MacTex 版本**

   为了避免不必要的麻烦，尽可能下载 full 版本，如 `texlive-full`。简而言之，下载大的那个。
   
   并且，尽可能使用**最新版**（截至目前是 2021）。2020 及之前版本使用 PDF 格式的图片可能会出现加粗问题。

#### 字体

1. **Ubuntu 下 缺失字体 WenQuanYi Zen Hei Mono 或 Times New Roman**

   安装对应字体即可。使用以下指令下载：

   ```
   sudo apt install fonts-wqy-zenhei ttf-mscorefonts-installer
   ```

2. **macOS 下提示 Package fontspec Warning: Font "STSong" does not contain requested Script "CJK"**

   忽略即可，不影响使用。

#### 内容

1. **标题一行放不下怎么办 / 如何使用长标题**

   使用`\titlea`、`\titleb` 和 `\titlec`，分别填入标题的一部分。举例来说，《基于A的B的设计与实现》可以按照如下方式书写。

   **两行标题**

   ```tex
   \titlea{基于A的B}      % 第一行
   \titleb{的设计与实现} % 第二行
   ```

   **三行标题**

   ```tex
   \titlea{基于A的B}  % 第一行
   \titleb{的设计}    % 第二行
   \titleb{与实现}    % 第三行
   ```

2. **使用长标题后摘要部分的题目不见了**

   使用`\titlea`、`\titleb` 和 `\titlec` 的同时需要保留 `\title`。举例来说，《基于A的B的设计与实现》需要按照如下方式书写。

   **两行标题**

   ```tex
   \title{基于A的B的设计与实现}
   \titlea{基于A的B}
   \titleb{的设计与实现}
   ```

   **三行标题**

   ```tex
   \title{基于A的B的设计与实现}
   \titlea{基于A的B}
   \titleb{的设计}
   \titlec{与实现}
   ```

   这样才能在摘要部分正常显示标题。

3. **使用长标题后封面内容出错**

   请使用最新的模板，在某些老版本模板中会出现此问题。

4. **如何取消另页右页开始（即去除空白页）**

   在cls文件约537行中有如下定义：
   ```tex
   % 不另页右页开始
   % \def\cleardoublepage{
   %   \clearpage\if@twoside \ifodd\c@page\fi\fi
   %   }
   
   %%%%%%
   % 另页右页开始
   \def\cleardoublepage{\clearpage\if@twoside \ifodd\c@page\else
   \hbox{}\thispagestyle{empty}\newpage\if@twocolumn\hbox{}\newpage\fi\fi\fi}
   %%%%%
   ```
   反注释对应定义即可。

5. **无法生成参考文献 / 无法正常显示参考文献**

   一般是因为没有使用 bibtex进行编译，请确认按照 xelatex - bibtex - xelatex - xelatex 的顺序对 tex 文件进行编译。

   可以使用 vscode 插件、IDE（如 tex studio）或项目根目录的编译脚本，以确保能正确生成参考文献。

6. **正文行距不是 1.5 倍**

   可能是因为使用了旧版本，或者是直接替换了 cls。如果已经使用了旧版本，需要按如下步骤进行迁移：

   1. 使用新的 cls 文件对现有的 cls 文件进行替换

   2. 使用新的 tex 文件对现有的 tex 文件进行替换，或删除在tex文件中的：

      ```tex
      % 开头部分
      \linespread{1.25}
      ```

7. **使用design选项后报错**

   可能是没有替换cfg和cls文件，替换即可
   
8. **如何在论文中展示代码**

   1. 截图，然后以图片形式插入论文
   2. 使用模板中的代码段示例。模板中提供了一份基础样式，如果有更多需要，可以自行修改样式。
   
9. **如何添加第二导师**（issue #23）

   使用如下命令：

   ```tex
   \secondsupervisor{导师姓名}
   \secondsupervisortitle{职称}
   ```

10. **使用PDF格式的图片内容会被加粗**（issue #24）

    目前看来是 caption 宏包的 bug，升级到 texlive 2021，或者使用新版 miktex 可以解决这个问题。

[TexLive]: https://www.tug.org/texlive/

[MacTex]:https://tug.org/mactex/

## 相关项目

- [南京大学科技报告XeLaTeX模板][nju-report]

- [符合国家标准《GB/T 7714-2005 文后参考文献著录规则》的BibTeX样式文件][gbt7714-2005-bst]

- [中文书刊排版相关标准和规范][typesetting-standard]