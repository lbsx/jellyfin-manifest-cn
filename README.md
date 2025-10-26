# Jellyfin 插件库中国加速镜像

您是否在为 Jellyfin 官方插件库下载速度慢、超时或无法访问而烦恼？

本项目旨在解决此问题。通过每周自动同步最新的 Jellyfin 插件清单 (`manifest.json`)，并将其中插件的下载地址替换为通过 CDN 加速的链接，为中国大陆用户提供一个稳定、高速的插件安装体验。

## ✨ 项目特性

*   🔄 **自动同步**：通过 GitHub Actions，每日自动从官方插件库抓取最新清单，确保与官方版本保持同步。
*   📦 **开箱即用**：无需任何特殊网络环境，只需在 Jellyfin 中添加一个新的存储库地址即可。

## 🚀 如何使用

操作非常简单，只需两步即可切换到本加速镜像库：

1. 登录您的 Jellyfin 服务器，进入 **控制台** > **插件**。

2. 点击 **存储库** 标签页。

3. 点击右侧的 `+` 号，添加一个新的存储库。

4. 在 **存储库 URL** 中，填入以下地址：

   1. intro-skipper
     ```
     https://ghfast.top/https://raw.githubusercontent.com/lbsx/jellyfin-plugins/refs/heads/main/intro-skipper-manifest.json
     ```

5. 点击 **保存**。现在，您可以回到 **目录** 标签页，享受飞速的插件下载体验了！

## 🔧 实现原理

本仓库通过一个预设的 GitHub Action 工作流程实现全自动化：

1.  **定时触发**：每周六8点定时启动。
2.  **拉取清单**：从 Jellyfin 插件库 下载最新的清单文件。
3.  **替换链接**：将manifest.json里的链接替换成中国可访问的代理链接
4.  **提交更新**：将修改后的 `manifest.json` 文件提交到本仓库。

## ⚠️ 免责声明

*   本项目仅为官方插件清单的镜像，并替换了插件包的下载地址。所有插件的版权和安全性由原作者负责。
*   本项目不存储任何插件文件，所有下载均指向 jsDelivr CDN 缓存的 Jellyfin 官方 GitHub 仓库。

## 🙏 致谢

*   所有为 Jellyfin 开发插件的贡献者
*   [GitHub Proxy](https://ghproxy.link/)

---

> 如果这个项目对您有帮助，请给一个 ⭐ Star！
