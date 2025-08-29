#!/bin/bash

# CS-Study 초기화 스크립트
# 이 스크립트는 CS 학습 환경을 자동으로 설정합니다.

echo ""
echo "╔════════════════════════════════════════╗"
echo "║   🎯 CS-Study 학습 환경 초기화 중...   ║"
echo "╚════════════════════════════════════════╝"
echo ""

# 색상 정의
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# 1. 필요한 디렉토리 생성
echo -e "${BLUE}[1/3]${NC} 📁 디렉토리 구조 생성 중..."

# 세션 폴더
if [ ! -d "sessions" ]; then
    mkdir -p sessions
    echo "  ✓ sessions/ 생성됨"
fi

# 주제별 폴더
topics=("operating-system" "network" "database" "data-structure")
for topic in "${topics[@]}"; do
    if [ ! -d "topics/$topic" ]; then
        mkdir -p "topics/$topic"
        echo "  ✓ topics/$topic/ 생성됨"
    fi
done

# 분석 폴더
if [ ! -d "analysis" ]; then
    mkdir -p analysis
    echo "  ✓ analysis/ 생성됨"
fi

# Obsidian 폴더
if [ ! -d "obsidian" ]; then
    mkdir -p obsidian
    echo "  ✓ obsidian/ 생성됨"
fi

# 2. .gitkeep 파일 생성 (빈 폴더 유지용)
echo -e "${BLUE}[2/3]${NC} 📄 .gitkeep 파일 생성 중..."

touch sessions/.gitkeep 2>/dev/null
touch analysis/.gitkeep 2>/dev/null
for topic in "${topics[@]}"; do
    touch "topics/$topic/.gitkeep" 2>/dev/null
done
touch obsidian/.gitkeep 2>/dev/null

echo "  ✓ .gitkeep 파일 생성 완료"

# 3. 환경 확인
echo -e "${BLUE}[3/3]${NC} 🔍 환경 확인 중..."

# CLAUDE.md 파일 확인
if [ -f "CLAUDE.md" ]; then
    echo -e "  ✓ CLAUDE.md 파일 확인됨 ${GREEN}(자동 인식됨)${NC}"
else
    echo -e "  ${YELLOW}⚠ CLAUDE.md 파일이 없습니다${NC}"
fi

# Git 확인
if command -v git &> /dev/null; then
    echo "  ✓ Git 설치 확인됨"
else
    echo -e "  ${YELLOW}⚠ Git이 설치되어 있지 않습니다${NC}"
fi

echo ""
echo "╔════════════════════════════════════════╗"
echo "║        ✅ 초기화 완료!                 ║"
echo "╚════════════════════════════════════════╝"
echo ""
echo -e "${GREEN}🚀 Claude Code에서 바로 시작하세요!${NC}"
echo ""
echo -e "${YELLOW}💬 바로 대화 시작:${NC}"
echo '   "오늘 운영체제 공부하자"'
echo '   "프로세스와 스레드 차이점 물어봐줘"'
echo '   "네트워크 OSI 7계층 설명해줘"'
echo ""
echo -e "${BLUE}📚 학습 팁:${NC}"
echo '   • 막히면: "힌트 주세요"'
echo '   • 평가받기: "내 답변 평가해줘"'
echo '   • 정리하기: "오늘 배운 내용 정리해줘"'
echo ""
echo -e "${GREEN}📝 모든 대화는 자동으로 저장됩니다!${NC}"
echo "   sessions/ 폴더에 날짜별로 정리"
echo ""
echo "행운을 빕니다! 화이팅! 💪"
echo ""