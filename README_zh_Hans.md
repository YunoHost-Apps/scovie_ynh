<!--
注意：此 README 由 <https://github.com/YunoHost/apps/tree/master/tools/readme_generator> 自动生成
请勿手动编辑。
-->

# YunoHost 上的 Scovie

[![集成程度](https://apps.yunohost.org/badge/integration/scovie)](https://ci-apps.yunohost.org/ci/apps/scovie/)
![工作状态](https://apps.yunohost.org/badge/state/scovie)
![维护状态](https://apps.yunohost.org/badge/maintained/scovie)

[![使用 YunoHost 安装 Scovie](https://install-app.yunohost.org/install-with-yunohost.svg)](https://install-app.yunohost.org/?app=scovie)

*[阅读此 README 的其它语言版本。](./ALL_README.md)*

> *通过此软件包，您可以在 YunoHost 服务器上快速、简单地安装 Scovie。*  
> *如果您还没有 YunoHost，请参阅[指南](https://yunohost.org/install)了解如何安装它。*

## 概况

[Scovie](https://github.com/eldertek/scovie) is an open-source digital signage system for high schools, built using Python and Django.
It provides an easy-to-use interface for administrators to upload and manage multimedia content, which is then displayed on screens throughout the school.

## Links

* Report a bug about this package: <https://github.com/eldertek/scovie/issues>
* PyPi package: <https://pypi.org/project/scovie/>


**分发版本：** 0.0.6~ynh4

**演示：** <https://scovie.eclipse-technology.eu>

## 截图

![Scovie 的截图](./doc/screenshots/all.png)

## 文档与资源

- 上游应用代码库： <https://github.com/eldertek/scovie>
- YunoHost 商店： <https://apps.yunohost.org/app/scovie>
- 报告 bug： <https://github.com/YunoHost-Apps/scovie_ynh/issues>

## 开发者信息

请向 [`testing` 分支](https://github.com/YunoHost-Apps/scovie_ynh/tree/testing) 发送拉取请求。

如要尝试 `testing` 分支，请这样操作：

```bash
sudo yunohost app install https://github.com/YunoHost-Apps/scovie_ynh/tree/testing --debug
或
sudo yunohost app upgrade scovie -u https://github.com/YunoHost-Apps/scovie_ynh/tree/testing --debug
```

**有关应用打包的更多信息：** <https://yunohost.org/packaging_apps>
