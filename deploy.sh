#!/bin/bash

echo "🚀 照片风格对比工具 - GitHub Pages 部署脚本"
echo ""

# 检查是否已初始化 git
if [ ! -d ".git" ]; then
    echo "📦 初始化 Git 仓库..."
    git init
fi

# 获取 GitHub 用户名
read -p "请输入你的 GitHub 用户名: " username

# 获取仓库名（默认 photo-compare-web）
read -p "请输入仓库名 (默认: photo-compare-web): " reponame
reponame=${reponame:-photo-compare-web}

# 构建仓库 URL
repo_url="https://github.com/$username/$reponame.git"

echo ""
echo "📋 部署信息:"
echo "  GitHub 用户名: $username"
echo "  仓库名: $reponame"
echo "  仓库地址: $repo_url"
echo "  访问地址: https://$username.github.io/$reponame/"
echo ""

read -p "确认无误? (y/n): " confirm

if [ "$confirm" != "y" ]; then
    echo "已取消部署"
    exit 1
fi

# 添加所有文件
echo ""
echo "📁 添加文件到 Git..."
git add .

# 提交
echo "💾 提交更改..."
git commit -m "Initial commit: 照片风格对比工具" || echo "没有需要提交的更改"

# 关联远程仓库
echo "🔗 关联远程仓库..."
git remote remove origin 2>/dev/null
git remote add origin "$repo_url"

# 推送到 GitHub
echo "⬆️  推送到 GitHub..."
git branch -M main
git push -u origin main

echo ""
echo "✅ 代码已推送到 GitHub!"
echo ""
echo "📖 下一步操作:"
echo ""
echo "1. 在浏览器中打开: https://github.com/$username/$reponame"
echo ""
echo "2. 点击 Settings → Pages"
echo ""
echo "3. 在 'Build and deployment' 部分:"
echo "   - Source: 选择 'Deploy from a branch'"
echo "   - Branch: 选择 'main'，文件夹选择 '/ (root)'"
echo "   - 点击 Save"
echo ""
echo "4. 等待 1-2 分钟后，访问:"
echo "   https://$username.github.io/$reponame/"
echo ""
echo "🎉 部署完成!"
