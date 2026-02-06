# SEO 行动清单 - 优先级排序

**最后更新**: 2026年2月6日  
**目标**: 从被收录到首页排名（3-6个月）

---

## 🔥 第一周必做任务（最关键）

### 1️⃣ 设置 Google Search Console
- [ ] 访问 [Google Search Console](https://search.google.com/search-console/)
- [ ] 添加你的网站 `https://helpingthehotties.com`
- [ ] **验证网站所有权**（使用DNS或HTML标签，我们已在HTML中添加了占位符）
- [ ] 提交 Sitemap：`https://helpingthehotties.com/sitemap.xml`
- [ ] 在 Search Console 中请求索引所有页面
- [ ] 监控"性能"报告查看排名关键词

**为什么重要**: 没有 Search Console 验证，Google 不会给予足够的权威性信号。这是**第一优先级**。

---

### 2️⃣ 设置 Google Analytics 4
- [ ] 创建 Google Analytics 账户
- [ ] 添加追踪代码到所有页面
- [ ] 设置转化目标（下载、访问时间等）
- [ ] 连接到 Google Search Console

**为什么重要**: 用户行为数据影响排名。Google 会观察你的跳出率、平均停留时间等。

---

### 3️⃣ 修复 Google 验证令牌
- [ ] 获取你的 Google Search Console 验证令牌
- [ ] 替换所有 HTML 文件中的 `REPLACE_WITH_GSC_TOKEN`
  ```
  在文件中搜索：REPLACE_WITH_GSC_TOKEN
  替换为你的实际令牌
  ```
- [ ] 在 Search Console 中完成验证

---

### 4️⃣ 开始获取第一批反向链接（游戏平台）
这些是**高权威性**的链接，会立即产生影响：

#### Steam（重要）
- [ ] 如果游戏在 Steam 上，创建 [Steam Community Hub](https://steamcommunity.com/)
- [ ] 在 Hub 描述中添加官网链接
- [ ] **预计获得权重**: 很高（Steam DA > 90）

#### GOG.com（重要）
- [ ] 访问 [GOG.com](https://www.gog.com/)
- [ ] 搜索你的游戏或创建游戏页面
- [ ] 在游戏描述中链接到官网
- [ ] **预计获得权重**: 很高（GOG DA > 90）

#### itch.io（重要）
- [ ] 在 [itch.io](https://itch.io/) 创建游戏页面
- [ ] 上传游戏文件
- [ ] 在"关于"部分添加官网链接
- [ ] **预计获得权重**: 高（itch.io DA > 70）

#### IndieDB（重要）
- [ ] 在 [IndieDB](https://www.indiedb.com/) 提交游戏
- [ ] 完整填写游戏信息
- [ ] 添加官网链接
- [ ] **预计获得权重**: 中高（IndieDB DA > 60）

---

## 📅 第2周-第4周：社区推广和初始链接建设

### 5️⃣ Reddit 社区推广（3个高权威社区）
每个帖子都会产生流量和潜在链接。

**关键**: 不要发垃圾邮件！提供真实价值，不要只是宣传。

#### 英文社区
- [ ] **r/visualnovels** (50k+ 成员)
  - 发布：游戏介绍 + 实际故事内容
  - 标题示例："`[Free VN] Helping the Hotties - A Choice-Driven Visual Novel with 4 Unique Endings`"
  - 链接到你的官网

- [ ] **r/indiegames** (800k+ 成员)
  - 发布：游戏亮点和独特特性
  - 标题："`We're xRedGames - Just Released Helping the Hotties Completely Free!`"

- [ ] **r/freetoplay** (300k+ 成员)
  - 强调"完全免费"
  - 标题："`Free Visual Novel RPG - Helping the Hotties. 19.5 Hours of Gameplay. No DRM.`"

#### 中文社区
- [ ] **虫部落论坛**
  - 发布游戏介绍和下载链接
  
- [ ] **动漫论坛**
  - 分享游戏截图和故事

**预计获得**: 
- 3-5 个高权威反向链接
- 200-500 个初始访问者
- 品牌提及增加

---

### 6️⃣ Discord 和社区参与
- [ ] 创建官方 Discord 服务器（如果还没有）
- [ ] 邀请 Reddit 用户加入
- [ ] 在服务器中添加官网链接
- [ ] 定期分享游戏更新

**为什么重要**: Discord 社区建立品牌忠诚度，增加品牌搜索量。

---

## 🗓️ 第二个月：内容扩展和更多链接

### 7️⃣ 创建新内容页面（增加索引页面和内部链接）

#### 创建 `/guides/` 页面（攻略）
- [ ] 复制 FAQ 页面结构
- [ ] 添加以下指南：
  - 完整游戏攻略
  - 角色路线指南（每个女角色一个）
  - 隐藏内容和秘密
  - 成就指南

**为什么重要**: 
- 增加索引页面数量
- 吸引搜索"Helping the Hotties 攻略"的用户
- 创建内部链接机会

#### 创建 `/news/` 页面（更新日志）
- [ ] 添加游戏版本历史
- [ ] 发布日期很重要！
- [ ] 包含元标记 `dateModified` 和 `datePublished`

#### 创建 `/community/` 页面
- [ ] Discord 服务器链接
- [ ] Reddit 社区链接
- [ ] 社交媒体链接
- [ ] 用户内容展示

### 8️⃣ 为新页面添加结构化数据
- [ ] 为 `/guides/` 添加 `HowTo` 或 `Article` 结构化数据
- [ ] 为 `/news/` 添加 `NewsArticle` 结构化数据
- [ ] 为 `/community/` 添加 `CollectionPage` 结构化数据

### 9️⃣ 优化内部链接
在主页添加指向新页面的链接：
```html
<a href="/guides/">查看完整攻略</a>
<a href="/news/">阅读最新更新</a>
<a href="/community/">加入社区</a>
```

---

## 🌐 第二个月：外部链接建设（媒体报道）

### 🔟 游戏新闻网站投稿

#### 英文媒体
- [ ] **VG247** - 提交新闻
- [ ] **Polygon** - 游戏故事新闻
- [ ] **Rock Paper Shotgun** - PC 游戏新闻
- [ ] **Game Developer Magazine** - 开发者故事

#### 中文媒体  
- [ ] **游民星空** - 提交游戏评测
- [ ] **3DM** - 游戏新闻稿
- [ ] **高清电影吧** - VN 游戏讨论

**邮件模板**:
```
主题: [新闻稿] Helping the Hotties - 免费视觉小说 RPG 游戏发布

内容:
尊敬的编辑，

我们很高兴通知您，xRedGames 工作室推出了完全免费的视觉小说 RPG 游戏《Helping the Hotties》。

游戏特点:
- 完全免费，无 DRM
- 4 个独特的故事路线
- 19.5 小时主流程内容
- 多语言支持
- 支持 Windows、Mac、Linux、Android

官网：https://helpingthehotties.com/

期待您的报道。

谢谢
```

**预计获得**: 
- 5-10 个中等权威链接（DA 40-60）
- 100-200 个额外访问者
- 品牌提及增加

---

## 📱 第三个月：社交媒体和品牌信号

### 1️⃣1️⃣ Twitter/X 推广
- [ ] 创建官方账户（如果没有）
- [ ] 每周发布 2-3 条游戏相关内容
- [ ] 使用相关标签：`#VisualNovel #IndieGame #FreeGame #HelpingTheHotties`
- [ ] 与相关账户互动
- [ ] 分享用户内容和评论

### 1️⃣2️⃣ YouTube 视频
- [ ] 上传 3-5 个视频：
  - 游戏预告片（2 分钟）
  - 游戏评测（5-10 分钟）
  - 角色介绍（3-5 分钟）
- [ ] 在描述中链接到官网
- [ ] 添加视频 Schema.org 标记

### 1️⃣3️⃣ TikTok/Shorts
- [ ] 创建 10-15 个短视频片段
- [ ] 展示最有趣的游戏场景
- [ ] 包含游戏官网链接（在生物中）

### 1️⃣4️⃣ 论坛和社区参与
- [ ] VNDB 论坛讨论
- [ ] erogamescape 评论
- [ ] 4gamer 评论区参与
- [ ] Steam 社区讨论

---

## 📊 排名监控和优化

### 1️⃣5️⃣ 每周监控
- [ ] 检查 Google Search Console 排名报告
- [ ] 查看哪些关键词开始出现
- [ ] 监控点击率和排名位置
- [ ] 记录趋势

### 1️⃣6️⃣ 关键词优化
根据你看到的排名情况，优化以下关键词：

**目标关键词**（高难度，3-6个月）:
- "Helping the Hotties download"
- "Helping the Hotties game"
- "free visual novel RPG"

**长尾关键词**（中等难度，2-4个月）:
- "Helping the Hotties walkthrough"
- "Helping the Hotties best route"
- "Helping the Hotties free download"

**问题关键词**（低难度，1-2个月）:
- "Helping the Hotties FAQ"
- "Helping the Hotties system requirements"
- "How to install Helping the Hotties"

---

## ✅ 成功指标跟踪

使用这个表格跟踪你的进度：

| 指标 | 目标 | 第1月 | 第2月 | 第3月 |
|-----|------|-------|-------|-------|
| 反向链接数 | 50+ | 15 | 35 | 50+ |
| 索引页面数 | 20+ | 10 | 15 | 20+ |
| 自然访问 | 100+/月 | 20 | 60 | 100+ |
| 排名关键词 | 10 | 2 | 5 | 10+ |
| Google 搜索排名 | 首页 | 100-50 | 50-20 | 20-5 |

---

## 🎯 最常见的排名阻碍和解决方案

| 问题 | 原因 | 解决方案 |
|-----|------|--------|
| 被索引但没排名 | 反向链接太少 | 增加高质量链接 |
| 排名停滞 | 缺乏新内容 | 定期更新内容 |
| 核心网络指标差 | 页面速度慢 | 使用 PageSpeed Insights 优化 |
| 某个页面排名不好 | 关键词密度低 | 优化标题、描述、内容 |
| 流量不稳定 | 品牌信号弱 | 增加社交媒体推广 |

---

## 💬 获得排名后要做的事

一旦你获得首页排名（1-20位），重点转向：
1. **提高点击率** - 优化标题和描述吸引用户点击
2. **减少跳出率** - 确保页面内容满足用户需求
3. **增加停留时间** - 添加更多内容和内部链接
4. **持续更新** - 每月发布新内容保持排名

---

**你现在的位置**: 📍 已被索引，正在建立权威性
**下一步**: 开始第一周的任务，特别是设置 Search Console 和获取第一批游戏平台链接！

开始日期: _________  
预期完成日期: _________ (3-6个月后)
