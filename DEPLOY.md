# 手动部署指南

## 当前状态
- 江心意报告已生成：`jiang_xinyi_20260425.html`
- 有楚茗报告已存在：`you_chuming_20250426.html`
- 索引页面已更新

## 部署步骤

### 方法1：手动推送（推荐）
```bash
cd /root/.picoclaw/workspace/github-deploy/student-reports
git add .
git commit -m "add jiang_xinyi report and update index"
git push origin main
```

### 方法2：使用GitHub Actions（备用）
在仓库设置中启用GitHub Actions自动部署。

### 方法3：下载后手动上传
1. 下载以下文件：
   - `index.html`
   - `jiang_xinyi_20260425.html`
   - `you_chuming_20250426.html`
2. 上传到GitHub仓库

## 文件清单
| 文件 | 大小 | 状态 |
|------|------|------|
| index.html | 5.4KB | 已更新 |
| jiang_xinyi_20260425.html | 10.7KB | 新增 |
| you_chuming_20250426.html | 18.8KB | 已有 |

## 访问地址
部署后访问：
- 索引页：https://yourname.github.io/student-reports/
- 江心意：https://yourname.github.io/student-reports/jiang_xinyi_20260425.html
- 有楚茗：https://yourname.github.io/student-reports/you_chuming_20250426.html
