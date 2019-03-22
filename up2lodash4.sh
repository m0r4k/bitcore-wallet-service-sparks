#!/bin/bash

grep -rl lib/ -e "_.padLeft" | xargs sed -i s@'_.padLeft'@'_.padStart@g'
grep -rl lib/ -e "_.padRight" | xargs sed -i s@'_.padRight'@'_.padEnd@g'
grep -rl lib/ -e "_.indexBy" | xargs sed -i s@'_.indexBy'@'_.keyBy@g'
