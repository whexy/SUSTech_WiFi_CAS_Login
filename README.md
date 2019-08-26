# SUSTech WiFi Login

## Introduce

Students may have problems when connecting to college WiFi using shell due to the lack of GUI.

Whexy provided an automatical shell script and a python program for Linux and MacOS users to handle this problem.

If you're using OpenWRT, please check [here](https://www.whexy.com/2019/08/22/OpenWrt%E4%B9%8B%E8%A7%A3%E5%86%B3%E5%8D%97%E7%A7%91%E5%A4%A7%E6%A0%A1%E5%9B%AD%E7%BD%91%E7%99%BB%E5%BD%95%E9%9A%BE%E9%A2%98/).

## How to use

1. Pull the repo, using ``git clone https://github.com/whexy/SUSTech_WiFi_Login.git``;
3. Modify the script with your Student ID/Teacher ID and your password.



# 南方科技大学 校园网登录

## 简介

当使用无用户界面的系统时，通过南方科技大学校园网认证较为困难。

Whexy 提供了一套自动化 Shell 脚本，和一个 Python 脚本以解决这个问题。

## 如何使用

1. 克隆这个仓库，使用命令``git clone https://github.com/whexy/SUSTech_WiFi_Login.git``；
2. 用你自己的学工号/教工号和密码修改脚本

## 关于 Python 脚本

不推荐使用 Python 脚本来完成此项工作，因为 Python 脚本的运行效率远低于 Shell 脚本。

为缩减脚本实际运行体积，只使用了 requests 库和正则搜索 re 库。请核对外部依赖库是否安装：

> requests==2.22.0

若没有安装，请使用：

``pip install requests`` 或 ``pip3 install requests``安装。