#!/bin/bash
echo "更新网站中..."
cp -r ~/Documents/Obsidian/* ./content/
npx quartz build
git add .
git commit -m "更新笔记: $(date +%Y-%m-%d)"
git push
echo "更新完成！"