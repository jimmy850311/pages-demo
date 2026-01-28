# 部署指南

## 快速开始

这个网站是一个完全静态的 HTML 网站，可以部署到任何支持静态文件的服务器上。

## 推荐的部署方案

### 方案 1: Cloudflare Pages (推荐) ⭐⭐⭐⭐⭐

**优点**: 免费，CDN 加速，自动 HTTPS，SEO 友好

```bash
# 1. 连接 GitHub 仓库到 Cloudflare Pages
# 2. 选择部署分支
# 3. 自动构建和部署
# 4. 配置自定义域名
# 5. 启用 Analytics 引擎
```

### 方案 2: Vercel ⭐⭐⭐⭐

**优点**: 免费，快速，自动部署，全球 CDN

```bash
git push origin main  # 自动部署
```

### 方案 3: GitHub Pages ⭐⭐⭐⭐

**优点**: 完全免费，与 GitHub 集成

```bash
# 在 Settings > Pages 中启用
# 选择要部署的分支
```

### 方案 4: 传统虚拟主机

**优点**: 完全控制，支持自定义配置

```bash
# 上传所有文件到 public_html
# 配置 .htaccess
# 启用 GZIP 压缩
# 配置缓存
```

## 本地测试

```bash
# Python 3
python3 -m http.server 8000

# 访问 http://localhost:8000
```

## 部署检查清单

### 部署前

- [ ] 所有链接都有效
- [ ] 图片都显示正常
- [ ] SEO meta 标签完整
- [ ] 结构化数据有效
- [ ] 移动设计测试通过
- [ ] 浏览器兼容性测试通过

### 部署后

- [ ] 在 Google Search Console 中验证网站
- [ ] 提交 Sitemap
- [ ] 请求 Google 索引网站
- [ ] 设置 Google Analytics
- [ ] 配置 404 页面
- [ ] 启用 HTTPS
- [ ] 配置 DNS 记录

### SEO 部署

```bash
# 1. 更新所有链接为完整 URL (不要使用相对路径)
# 2. 检查所有 meta 标签
# 3. 验证 Sitemap
# 4. 测试 robots.txt
# 5. 配置规范 URL
```

## 性能优化

### 启用 Gzip 压缩

```apache
# .htaccess
<IfModule mod_deflate.c>
  AddOutputFilterByType DEFLATE text/html
  AddOutputFilterByType DEFLATE text/css
  AddOutputFilterByType DEFLATE application/javascript
</IfModule>
```

### 启用浏览器缓存

```apache
# .htaccess
<IfModule mod_expires.c>
  ExpiresActive On
  ExpiresByType text/css "access 1 month"
  ExpiresByType application/javascript "access 1 month"
  ExpiresByType image/* "access 1 month"
</IfModule>
```

### 使用 CDN

- Cloudflare (推荐)
- AWS CloudFront
- Akamai

## 监控和分析

### Google Search Console

```
1. 访问 https://search.google.com/search-console
2. 添加网站属性
3. 验证所有权
4. 提交 Sitemap
5. 监控搜索排名
```

### Google Analytics

```
1. 创建 Google Analytics 账户
2. 获取追踪 ID
3. 将代码添加到网站
4. 监控流量和用户行为
```

### 监控指标

```
关键指标:
- 页面加载时间: < 2 秒
- 首字节时间 (TTFB): < 0.5 秒
- 最大内容绘制 (LCP): < 2.5 秒
- 首输入延迟 (FID): < 100ms
- 累积布局偏移 (CLS): < 0.1
```

## 自定义域名设置

### 步骤

1. 在域名注册商购买域名
2. 更新 DNS 设置:
   - 对于 Cloudflare Pages: 指向 Cloudflare 的 NS 记录
   - 对于 Vercel: 添加 CNAME 记录
   - 对于 GitHub Pages: 添加 CNAME 文件

3. 等待 DNS 传播 (通常 24-48 小时)

### 示例 DNS 配置

```
# 对于 Cloudflare
域名服务器指向 Cloudflare

# 对于 Vercel
CNAME: 你的域名 -> cname.vercel-dns.com

# 对于 GitHub Pages
CNAME 文件内容: helpingthehotties.com
```

## 安全配置

### HTTPS

- 所有部署方案都应使用 HTTPS
- Cloudflare/Vercel/GitHub Pages 自动提供 SSL

### 安全头部

```apache
# .htaccess
<IfModule mod_headers.c>
  Header always set X-Content-Type-Options "nosniff"
  Header always set X-Frame-Options "SAMEORIGIN"
  Header always set X-XSS-Protection "1; mode=block"
  Header always set Referrer-Policy "strict-origin-when-cross-origin"
</IfModule>
```

### 内容安全策略

```html
<!-- 在 index.html 中 -->
<meta http-equiv="Content-Security-Policy" 
  content="default-src 'self'; script-src 'self' 'unsafe-inline'">
```

## 故障排除

### 问题: 页面显示 404

```
解决:
1. 检查文件是否上传
2. 验证文件权限
3. 检查 .htaccess 配置
4. 清除浏览器缓存
```

### 问题: SEO 不见效

```
解决:
1. 验证 Google Search Console
2. 提交 Sitemap
3. 等待 Google 爬虫索引
4. 检查 robots.txt
5. 监控索引覆盖报告
```

### 问题: 加载缓慢

```
解决:
1. 启用 GZIP 压缩
2. 启用 CDN
3. 启用浏览器缓存
4. 优化图片大小
5. 移除不需要的脚本
```

## 维护和更新

### 定期检查

```
每周:
- 检查页面加载时间
- 检查错误日志

每月:
- 监控 Google Analytics
- 检查排名位置
- 审计反向链接

每季度:
- SEO 审计
- 内容审查
- 性能优化
```

### 更新内容

```bash
# 1. 在本地编辑文件
# 2. 测试所有功能
# 3. 提交到 Git
# 4. 自动部署到服务器
```

## 费用估计

| 方案 | 域名 | 托管 | CDN | 总计 |
|------|------|------|-----|------|
| Cloudflare Pages | $10-12/年 | 免费 | 包含 | ~$10-12/年 |
| Vercel | $10-12/年 | 免费 | 包含 | ~$10-12/年 |
| GitHub Pages | $10-12/年 | 免费 | 不包含 | ~$10-12/年 |
| 传统虚拟主机 | $10-12/年 | $5-15/月 | 可选 | ~$70-192/年 |

## 支持

需要帮助? 参考以下资源:

- Cloudflare 文档: https://developers.cloudflare.com/pages/
- Vercel 文档: https://vercel.com/docs
- GitHub Pages: https://pages.github.com/

---
最后更新: 2026-01-28
