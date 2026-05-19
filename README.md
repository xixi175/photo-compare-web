# 照片风格对比工具

一个纯前端的照片风格对比网页工具，部署在 GitHub Pages 上，所有人都可以免费使用。

## 在线使用

**👉 [点击访问](https://你的用户名.github.io/photo-compare-web/)**

## 功能特点

- 两个对比组（A/B），每组最多5张照片
- 4组预设照片（风景、人像、建筑、美食）
- 支持从本地上传照片
- 支持创建多个照片队列
- 一键将队列添加到对比组
- 全屏对比模式
- 所有数据保存在浏览器本地

## 使用说明

### 1. 使用预设照片
- 在首页或预设页面选择一个预设组
- 选择要添加到的对比组（A或B）
- 照片会自动添加到对应组

### 2. 上传自己的照片
- 切换到「队列」页面
- 点击「添加队列」创建新队列
- 点击队列中的「上传」按钮选择照片
- 选择目标对比组，点击「添加对比」

### 3. 管理对比组
- 点击照片上的 × 删除单张照片
- 点击「清空」删除整组照片
- 点击照片可以放大预览
- 点击「全屏对比」进入专注对比模式

## 技术说明

- 纯前端实现，无需后端服务器
- 使用 LocalStorage 保存数据
- 使用 picsum.photos 作为预设图片源
- 支持响应式布局，手机电脑都能用

## 本地运行

```bash
# 克隆仓库
git clone https://github.com/你的用户名/photo-compare-web.git
cd photo-compare-web

# 用浏览器打开
open index.html
# 或启动本地服务器
python3 -m http.server 8080
```

## 部署到 GitHub Pages

### 1. 创建 GitHub 仓库

1. 登录 [GitHub](https://github.com)
2. 点击右上角 + → New repository
3. 仓库名填写 `photo-compare-web`
4. 选择 Public（公开）
5. 点击 Create repository

### 2. 上传代码

```bash
# 在项目目录初始化 git
cd photo-compare-web
git init

# 添加文件
git add .

# 提交
git commit -m "Initial commit"

# 关联远程仓库（替换为你的用户名）
git remote add origin https://github.com/你的用户名/photo-compare-web.git

# 推送
git push -u origin main
```

### 3. 启用 GitHub Pages

1. 打开仓库页面
2. 点击 Settings → Pages
3. Source 选择 Deploy from a branch
4. Branch 选择 main，文件夹选择 / (root)
5. 点击 Save

等待几分钟后，访问 `https://你的用户名.github.io/photo-compare-web/` 即可使用。

## 自定义预设照片

编辑 `index.html` 中的 `presetGroups` 数组：

```javascript
presetGroups = [
    {
        id: 1,
        name: '你的组名',
        photos: [
            '图片URL1',
            '图片URL2',
            '图片URL3',
            '图片URL4',
            '图片URL5'
        ]
    }
];
```

## 浏览器兼容性

- Chrome 80+
- Firefox 75+
- Safari 13+
- Edge 80+

## 许可证

MIT License - 免费使用、修改和分发
