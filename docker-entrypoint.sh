#!/bin/sh
set -e

# .env 로드 (명시적으로)
if [ -f .env ]; then
  export $(grep -v '^#' .env | xargs)
fi

# onboarding 질문에 자동으로 Yes 입력
# (필요하면 echo -e "Yes\nYes\nNo\n" 처럼 확장 가능)
printf "Yes\n" | pnpm dev onboard
