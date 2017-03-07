# 关于skynet-mingw 5.3 分支


[skynet-mingw](https://github.com/dpull/skynet-mingw) 是[skynet](https://github.com/cloudwu/skynet)的windows平台的实现。其主要特点是：

1. skynet 以submodule链接，方便升级，**确保不改**。
1. 仅扩展了700行代码，方便维护。
1. 自动更新skynet，自动构建，自动化测试，确保质量。

## 编译
1. 安装 [MinGW5.3](http://sourceforge.net/projects/mingw/files/) 最新版本 5.3
1. 安装 `gcc g++`
1. 安装 `pthread (dev)`
1. 安装 `binutils`
1. 运行 `MinGW\msys\1.0\msys.bat`
1. 运行 `prepare.sh`
1. 运行 `fix5.3.sh`
1. 运行 `make`

### 常见问题
1. 建议使用 `MinGW\msys\1.0\msys.bat` 进行编译
1. 错误: `gcc: Command not found`, 解决: 修改 `msys\1.0\etc\fstab` 中的 `/mingw` 路径
1. 当提示缺少类似`dlfcn.h`文件时，建议看看头文件搜索路径是否有问题，举个例子`perl(Strawberry Perl)`中有`gcc`程序，同时它注册了系统环境变量

## 测试
解决了stdin 不能select 问题
一系列编译warning 修复
## 相关文档

