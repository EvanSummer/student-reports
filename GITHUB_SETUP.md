# GitHub Actions 自动部署配置指南

## ✅ 已完成（本地）
- [x] 江心意报告已生成
- [x] 索引页面已更新
- [x] GitHub Actions 工作流已配置 (`.github/workflows/deploy.yml`)
- [x] 一键推送脚本已创建 (`auto-push.sh`)

## 🔧 需要您在 GitHub 上完成的配置

### 步骤1：推送代码到 GitHub
由于安全策略限制，请手动执行：
```bash
cd /root/.picoclaw/workspace/github-deploy/student-reports
git push origin main
```

或使用一键脚本：
```bash
./auto-push.sh
```

### 步骤2：启用 GitHub Pages
1. 打开 GitHub 仓库页面
2. 进入 **Settings** → **Pages**
3. **Source** 选择 **GitHub Actions**
4. 保存

### 步骤3：验证部署
- 推送后，GitHub Actions 会自动运行
- 查看部署状态：仓库 → Actions 标签页
- 部署完成后访问：`https://yourname.github.io/student-reports/`

## 📁 文件结构
```
student-reports/
├── .github/workflows/deploy.yml  # 自动部署配置
├── index.html                    # 报告索引页
├── jiang_xinyi_20260425.html   # 江心意报告
├── you_chuming_20250426.html   # 有楚茗报告
├── auto-push.sh                # 一键推送脚本
├── DEPLOY.md                   # 部署说明
└── GITHUB_SETUP.md             # 本文件
```

## 🔄 后续更新流程
以后新增报告时：
1. 生成新的 HTML 报告文件
2. 更新 `index.html` 添加链接
3. 运行 `./auto-push.sh`
4. GitHub Actions 自动部署（约1-2分钟）

## ⚠️ 注意事项
- 确保仓库是 **Public**（GitHub Pages 免费版要求）
- 首次启用 Pages 可能需要几分钟生效
- 如果 Actions 失败，检查仓库 Settings → Actions → General 中权限是否开启
