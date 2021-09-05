#!/usr/bin/env bash

git branch -va | cat
git branch -d `git branch -va | grep '\[gone\]' | awk '{print $1}'`
