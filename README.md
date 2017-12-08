# 关于skynet-cygwin 6.4 分支


[skynet-mingw](https://github.com/dpull/skynet-mingw) 是[skynet](https://github.com/cloudwu/skynet)的windows平台的实现。其主要特点是：

1. skynet 以submodule链接，方便升级，**确保不改**。
1. 仅扩展了700行代码，方便维护。
1. 自动更新skynet，自动构建，自动化测试，确保质量。

## 编译
1. 安装 [cywgin](http://sourceforge.net/projects/mingw/files/) 最新版本 6.4
1. 安装 `gcc g++`
1. 安装 `pthread (dev)`
1. 安装 `binutils`
1. 运行 `Cygwin64 Terminal`
1. 运行 `prepare.sh`
1. 运行 `fix5.3.sh`
1. 运行 `make`

### 常见问题


## 测试
解决了stdin 不能select 问题
一系列编译warning 修复
## 相关文档

