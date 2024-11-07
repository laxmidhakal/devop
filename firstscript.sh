#!/bin/bash

find / -type f -name "*.log" -mtime -1 2>log
echo "hello"
