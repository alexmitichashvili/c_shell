#!/usr/bin/env bash
set -u
BIN=./cshell
pass=0; fail=0

run_case() {
  local name="$1" input="$2" expected="$3" actual
  actual=$(printf '%s\n' "$input" | $BIN 2>/dev/null)
  if [[ "$actual" == *"$expected"* ]]; then
    echo "ok   - $name"; pass=$((pass+1))
  else
    echo "FAIL - $name | expected '$expected', got '$actual'"; fail=$((fail+1))
  fi
}

run_case "echo builtin"     "echo hello" "hello"
run_case "external command" "ls"         "main.c"
run_case "pwd builtin"      "pwd"        "$(pwd)"

echo "---"
echo "passed: $pass, failed: $fail"
[[ $fail -eq 0 ]]
