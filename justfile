#!/usr/bin/env just --justfile

alias s:=start
alias l:=lint
alias f:=format

start:
  deno run --allow-all ./mod.ts

cache:
	deno cache --reload ./mod.ts

compile:
	deno compile --allow-all --unstable --output ./challenge ./mod.ts

format:
	deno fmt

lint:
	deno lint
