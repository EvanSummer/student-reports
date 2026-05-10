#!/bin/bash
# 学生报告自动推送脚本
# 用法: ./auto-push.sh

cd "$(dirname "$0")"

echo "=== 学生报告 GitHub 自动推送 ==="
echo ""

# 检查是否有变更
if [ -z "$(git status --porcelain)" ]; then
    echo "✅ 没有需要推送的变更"
    exit 0
fi

# 显示变更
echo "📋 待推送的变更:"
git status --short
echo ""

# 自动提交
read -p "输入提交信息 (直接回车使用默认): " msg
if [ -z "$msg" ]; then
    msg="update: $(date '+%Y-%m-%d %H:%M')"
fi

git add .
git commit -m "$msg"

# 推送
echo ""
echo "🚀 推送到 GitHub..."
git push origin main

echo ""
echo "✅ 完成！GitHub Actions 将自动部署到 Pages"
echo "部署状态查看: https://github.com/$(git remote get-url origin | sed 's/.*github.com\///;s/\.git$//')/actions"
