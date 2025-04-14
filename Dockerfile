# 1. Node.js 22 버전 사용
FROM node:22

# 2. 작업 디렉토리 설정
WORKDIR /app

# 3. 루트 package.json 및 lock 파일 복사
COPY package*.json ./

# 4. 전체 프로젝트 복사 (packages 포함!)
COPY . .

# 5. 의존성 설치 (모든 워크스페이스 포함)
RUN npm install --workspaces --include-workspace-root

# 6. 개발 서버 실행
CMD ["npm", "run", "nodejs:dev"]
