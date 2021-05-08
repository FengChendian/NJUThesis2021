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

- 限于精力未提供详细使用说明。

- 本模板旨在为同学提供毕业论文书写的方便，如有模板问题或者版权问题，请联系作者。

## 使用说明

### 环境配置

GitHub提供打包下载，如果GitHub速度过慢，可以去[NJU GitLab同步镜像](https://git.nju.edu.cn/nju-lug/nju-latex-templates/NJUThesis2021)下载。

下表是目前实测可用的环境。

> macOS系统可以正常编译`tex`文件, 但由于字体原因, 实际输出结果会与其他环境有些许所不同, 使用请谨慎.

| OS           | Tex          | 测试情况 |
| ------------ | ------------ | -------- |
| Windows 10   | TexLive 2020 | ✔        |
| Windows 10   | TexLive 2021 | ✔        |
| Windows 10   | MikTex 21.2  | ✔        |
| Ubuntu 20.04 | TexLive 2020 | ✔        |
| tex.nju.edu.cn | Overleaf   | ✔      |

- Mac系统请使用为MacTex(TexLive+Texshop)-->XeLatex，Windows系统请使用TexLive(TeXworks/Vscode)-->XeLatex，其他环境下还未测试。

- 点击这里下载TexLive：[TexLive下载地址][TexLive]
- 点击这里下载MacTex：[MacTex下载地址][MacTex]

### 其他注意事项

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

### 特别提醒

- 不同的平台需要加载的字体不同，请根据tex文件中的提示使用不同的参数。如果遇到字体无法加载的问题请确认系统装有相应字体。不同平台下请反注释相应的代码，例如在windows下，应为：

  ```latex
  %% 如需Adobe字体请用（默认）
  %\documentclass[adobefonts]{njuthesis}
  %% MacOS系统请用
  %\documentclass[macfonts]{njuthesis}
  %% Windows系统请用
  \documentclass[winfonts]{njuthesis}
  %% Linux系统请用
  %\documentclass[linuxfonts]{njuthesis}
  ```

[TexLive]: https://www.tug.org/texlive/
[MacTex]:https://tug.org/mactex/

## 相关项目

- [南京大学科技报告XeLaTeX模板][nju-report]
- [符合国家标准《GB/T 7714-2005 文后参考文献著录规则》的BibTeX样式文件][gbt7714-2005-bst]
- [中文书刊排版相关标准和规范][typesetting-standard]