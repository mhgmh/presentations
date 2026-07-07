#!/bin/bash
# 在新电脑上运行本脚本，把插件/技能还原到 ~/.codex
set -e
DIR="$(cd "$(dirname "$0")" && pwd)"
mkdir -p "$HOME/.codex/plugins/cache" "$HOME/.codex/skills"
[ -d "$DIR/plugins/cache" ] && cp -R "$DIR/plugins/cache/." "$HOME/.codex/plugins/cache/" && echo "已还原插件"
[ -d "$DIR/skills" ] && cp -R "$DIR/skills/." "$HOME/.codex/skills/" && echo "已还原技能"
echo "完成 ✅ 重启 codex 生效"
