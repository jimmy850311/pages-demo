#!/bin/bash
# SEO Multilingual Website Validation Script

echo "======================================"
echo "SEO 多语言网站验证脚本"
echo "======================================"
echo ""

BASE_URL="http://localhost:8888"
LANGUAGES=("" "zh/" "es/" "ja/")
LANG_NAMES=("English (EN)" "Chinese (中文)" "Spanish (ES)" "Japanese (日本語)")

# 测试 1: 检查所有 URL 可访问性
echo "【测试 1】URL 可访问性检查"
echo "================================"
for i in "${!LANGUAGES[@]}"; do
    url="${BASE_URL}/${LANGUAGES[$i]}"
    lang_name="${LANG_NAMES[$i]}"
    status=$(curl -s -o /dev/null -w "%{http_code}" "$url")
    if [ "$status" = "200" ]; then
        echo "✅ $lang_name: HTTP $status - $url"
    else
        echo "❌ $lang_name: HTTP $status - $url"
    fi
done
echo ""

# 测试 2: 检查 CSS 文件
echo "【测试 2】CSS 文件加载检查"
echo "================================"
status=$(curl -s -o /dev/null -w "%{http_code}" "$BASE_URL/styles.css")
if [ "$status" = "200" ]; then
    echo "✅ styles.css: HTTP $status"
else
    echo "❌ styles.css: HTTP $status"
fi
echo ""

# 测试 3: 检查图片加载
echo "【测试 3】图片文件检查"
echo "================================"
for img in screenshot1.jpg screenshot2.jpg screenshot3.jpg; do
    status=$(curl -s -o /dev/null -w "%{http_code}" "$BASE_URL/images/$img")
    if [ "$status" = "200" ]; then
        echo "✅ $img: HTTP $status"
    else
        echo "❌ $img: HTTP $status"
    fi
done
echo ""

# 测试 4: 检查 Sitemap
echo "【测试 4】Sitemap 检查"
echo "================================"
status=$(curl -s -o /dev/null -w "%{http_code}" "$BASE_URL/sitemap.xml")
if [ "$status" = "200" ]; then
    echo "✅ sitemap.xml: HTTP $status"
    echo ""
    echo "Sitemap 内容预览："
    curl -s "$BASE_URL/sitemap.xml" | head -20
else
    echo "❌ sitemap.xml: HTTP $status"
fi
echo ""

# 测试 5: 检查 robots.txt
echo "【测试 5】Robots.txt 检查"
echo "================================"
status=$(curl -s -o /dev/null -w "%{http_code}" "$BASE_URL/robots.txt")
if [ "$status" = "200" ]; then
    echo "✅ robots.txt: HTTP $status"
else
    echo "❌ robots.txt: HTTP $status"
fi
echo ""

# 测试 6: 检查 hreflang 链接
echo "【测试 6】hreflang 链接验证"
echo "================================"
for i in "${!LANGUAGES[@]}"; do
    url="${BASE_URL}/${LANGUAGES[$i]}"
    lang_name="${LANG_NAMES[$i]}"
    echo "检查 $lang_name:"
    hreflang_count=$(curl -s "$url" | grep -c 'rel="alternate" hreflang')
    if [ "$hreflang_count" -ge 4 ]; then
        echo "  ✅ 找到 $hreflang_count 个 hreflang 链接"
    else
        echo "  ❌ 仅找到 $hreflang_count 个 hreflang 链接（应该是 4+）"
    fi
done
echo ""

# 测试 7: 检查 Canonical 标签
echo "【测试 7】Canonical 标签验证"
echo "================================"
declare -A CANONICAL_URLS=(
    [""]="https://helpingthehotties.com/"
    ["zh/"]="https://helpingthehotties.com/zh/"
    ["es/"]="https://helpingthehotties.com/es/"
    ["ja/"]="https://helpingthehotties.com/ja/"
)

for lang in "${LANGUAGES[@]}"; do
    url="${BASE_URL}/${lang}"
    lang_name="${LANG_NAMES[0]}"
    for i in "${!LANGUAGES[@]}"; do
        if [ "${LANGUAGES[$i]}" = "$lang" ]; then
            lang_name="${LANG_NAMES[$i]}"
        fi
    done
    
    expected_canonical="${CANONICAL_URLS[$lang]}"
    canonical=$(curl -s "$url" | grep -o 'link rel="canonical" href="[^"]*"' | head -1)
    
    if echo "$canonical" | grep -q "$expected_canonical"; then
        echo "✅ $lang_name: $canonical"
    else
        echo "❌ $lang_name: 预期 '$expected_canonical' 但找到 '$canonical'"
    fi
done
echo ""

# 测试 8: 检查页面标题
echo "【测试 8】页面标题检查"
echo "================================"
declare -A TITLES=(
    [""]="Free Download | Official Visual Novel Game"
    ["zh/"]="免费下载 | 官方视觉小说游戏"
    ["es/"]="Descarga Gratuita | Juego Oficial"
    ["ja/"]="無料ダウンロード | 公式"
)

for lang in "${!TITLES[@]}"; do
    url="${BASE_URL}/${lang}"
    lang_name="${LANG_NAMES[0]}"
    for i in "${!LANGUAGES[@]}"; do
        if [ "${LANGUAGES[$i]}" = "$lang" ]; then
            lang_name="${LANG_NAMES[$i]}"
        fi
    done
    
    title=$(curl -s "$url" | grep -oP '<title>\K[^<]+' | head -1)
    echo "$lang_name:"
    echo "  标题: $title"
done
echo ""

echo "======================================"
echo "✅ 验证完成！"
echo "======================================"
