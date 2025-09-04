#!/bin/bash


set -e
source $(dirname $0)/.env


log_dir="$(dirname $0)/logs"
mkdir -p $log_dir
log_file="$log_dir/$(date +%Y-%m-%d).log"


prompt="$1"


{
echo ">>> Prompt: $prompt"
$GEMINI_CMD prompt "$prompt"
echo -e "\n---\n"
} >> $log_file


echo "Geminiの出力を $log_file に追記しました。"