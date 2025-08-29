#!/bin/bash

# CS-Study 초기화 스크립트
echo "🎯 CS-Study 학습 환경을 설정합니다..."

# 필요한 디렉토리 생성
echo "📁 디렉토리 구조 생성 중..."
mkdir -p sessions
mkdir -p topics/{operating-system,network,database,data-structure}
mkdir -p analysis
mkdir -p obsidian

# .gitkeep 파일 생성 (빈 폴더 유지용)
touch sessions/.gitkeep
touch analysis/.gitkeep
touch topics/operating-system/.gitkeep
touch topics/network/.gitkeep
touch topics/database/.gitkeep
touch topics/data-structure/.gitkeep
touch obsidian/.gitkeep

echo "✅ 설정 완료!"
echo ""
echo "🚀 시작하기:"
echo "1. Claude Code 열기 (https://claude.ai/code)"
echo "2. 이 폴더 열기 (File > Open Folder)"
echo "3. 대화 시작: '오늘 운영체제 공부하자'"
echo ""
echo "💡 CLAUDE.md 파일이 자동으로 인식되어 학습 시스템이 활성화됩니다."