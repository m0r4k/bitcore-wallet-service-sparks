#!/bin/bash

grep -rl lib/ -e "_.padLeft" | xargs sed -i s@'_.padLeft'@'_.padStart@g'
grep -rl lib/ -e "_.padRight" | xargs sed -i s@'_.padRight'@'_.padEnd@g'
grep -rl lib/ -e "_.indexBy" | xargs sed -i s@'_.indexBy'@'_.keyBy@g'

sed s@'"lodash": "^3.10.1"'@'"lodash": ">=4.7.11"'@g -i package.json