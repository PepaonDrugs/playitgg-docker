#!/bin/bash

# Change to the directory where playit-x64 is located
cd /app

# Execute playit-x64
./playit-x64 | tee /app/playit-log.txt | cat

