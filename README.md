# 🎯 CS-Study: Claude Code로 빅테크 면접 준비하기

> **Claude Code와 함께하는 대화형 CS 면접 학습 시스템**  
> 빅테크 CTO와 MIT CS 박사의 페르소나로 실전 면접을 준비합니다.

## ✨ 특징

- 🤖 **AI 페르소나 시스템**: 실무 질문자(CTO)와 이론 도우미(박사) 역할 분담
- 📝 **자동 학습 기록**: 모든 대화가 구조화된 마크다운으로 저장
- 📊 **레벨 평가 시스템**: 신입(Level 1)부터 빅테크 수준(Level 5)까지
- 🔄 **실시간 피드백**: 답변 즉시 평가와 개선점 제시
- 📈 **성장 추적**: 약점 분석과 맞춤형 학습 경로 제공

## 🚀 시작하기

### 1. 필수 요구사항
- [Claude Code](https://claude.ai/code) 구독
- Git
- (선택) Obsidian - 학습 노트 시각화용

### 2. 설치

```bash
# 레포지토리 클론
git clone https://github.com/yourusername/CS-Study.git
cd CS-Study

# 폴더 구조 초기화
mkdir -p sessions topics/{operating-system,network,database,data-structure} analysis obsidian
```

### 3. Claude Code 설정

1. Claude Code 열기
2. 프로젝트 폴더 열기: `File > Open Folder > CS-Study`
3. CLAUDE.md 파일이 자동으로 인식됩니다

### 4. (선택) Obsidian 연동

```bash
# Obsidian 볼트 경로로 심볼릭 링크 생성
ln -s /path/to/CS-Study /path/to/ObsidianVault/CS-Study
```

## 💬 사용법

### 기본 학습 플로우

1. **질문 받기**
```
"프로세스와 스레드의 차이를 설명해주세요"
```

2. **답변 시도**
```
나: "프로세스는... 스레드는..."
```

3. **막히면 도움 요청**
```
나: "힌트 주세요" / "모르겠어요"
```

4. **피드백 받기**
```
CTO: "답변 점수는 6/10입니다. Context Switching 비용을 정량화하세요."
```

### 명령어 예시

#### 학습 시작
```
"오늘 운영체제 공부하자"
"프로세스 스케줄링에 대해 물어봐줘"
```

#### 힌트 요청
```
"힌트 주세요"
"예시를 들어주세요"
"더 쉽게 설명해주세요"
```

#### 평가 요청
```
"내 답변 평가해줘"
"몇 점이야?"
"뭐가 부족해?"
```

#### 정리 요청
```
"오늘 배운 내용 정리해줘"
"이번 주 학습 내용 요약해줘"
```

## 📁 프로젝트 구조

```
CS-Study/
├── CLAUDE.md           # Claude Code 설정 (자동 인식)
├── README.md           # 이 파일
├── scoring-criteria.md # 평가 기준 상세
├── sessions/           # 학습 세션 기록
│   └── YYYY-MM-DD/
│       ├── README.md   # 세션 요약
│       └── q1-topic/   # 질문별 폴더
│           ├── question.md
│           ├── attempts.md
│           └── feedback.md
├── topics/             # 주제별 정리
│   ├── operating-system/
│   ├── network/
│   ├── database/
│   └── data-structure/
├── analysis/           # 학습 분석
│   ├── weaknesses.md   # 약점 분석
│   └── improvement.md  # 개선 계획
└── obsidian/          # Obsidian 연동용
```

## 📊 평가 시스템

### 레벨 구분
- **Level 1 (1-3점)**: 개념 이해 - 신입 수준
- **Level 2 (4-6점)**: 구조 이해 - 주니어 수준
- **Level 3 (7-8점)**: 실전 적용 - 미드레벨 수준
- **Level 4 (9점)**: 시스템 설계 - 시니어 수준
- **Level 5 (10점)**: 빅테크 수준

### 평가 요소
- **정확성 (40%)**: 개념이 정확한가?
- **깊이 (30%)**: 원리를 이해하는가?
- **실전성 (20%)**: 실제 적용 가능한가?
- **완성도 (10%)**: 질문에 완전히 답했는가?

## 🎓 학습 커리큘럼

### Phase 1: CS 기초 (5주)
- **Week 1-2**: 운영체제 (프로세스, 메모리, 동기화)
- **Week 3**: 네트워크 (TCP/IP, HTTP, 로드밸런싱)
- **Week 4**: 데이터베이스 (인덱스, 트랜잭션, 복제)
- **Week 5**: 자료구조 (시간복잡도, 트리, 해시)

### Phase 2: 백엔드 심화 (4주)
- Spring Boot, JVM 튜닝
- Redis, Kafka
- API 설계, MSA

### Phase 3: 인프라 (3주)
- Docker, Kubernetes
- 모니터링, 로깅
- CI/CD

### Phase 4: 시스템 설계 (3주)
- 대규모 트래픽 처리
- 결제 시스템 설계
- 실시간 처리 시스템

## 💡 학습 팁

### 좋은 답변 구조
1. **개념 정의**: 명확한 정의부터 시작
2. **구체적 예시**: 실제 사례나 수치 제시
3. **비교 분석**: 장단점과 트레이드오프
4. **실전 적용**: 언제 어떻게 사용하는지

### 예시 답변
```
Q: "데이터베이스 인덱스란?"

A: "인덱스는 테이블의 검색 속도를 높이는 자료구조입니다.
B+Tree 구조로 O(log n) 검색이 가능하며,
쓰기는 10-20% 느려지지만 읽기는 100배까지 빨라집니다.
카디널리티가 높은 컬럼에 적합하며,
WHERE, ORDER BY, JOIN 조건에 사용됩니다."
```

## 🤝 기여하기

이 프로젝트를 개선하고 싶으시다면:

1. Fork 하기
2. Feature 브랜치 생성 (`git checkout -b feature/AmazingFeature`)
3. 커밋 (`git commit -m 'Add some AmazingFeature'`)
4. Push (`git push origin feature/AmazingFeature`)
5. Pull Request 열기

## 📝 라이센스

MIT License - 자유롭게 사용하고 수정하세요!

## 🙏 감사의 말

- Anthropic Claude 팀
- 빅테크 기업들의 기술 블로그
- CS 면접 준비하는 모든 개발자들

---

**만든이**: [@yourusername](https://github.com/yourusername)  
**문의**: your.email@example.com

> 💪 "매일 조금씩, 꾸준히 성장하기"