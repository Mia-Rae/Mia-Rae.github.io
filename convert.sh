#!/bin/bash

echo "activate venv"
source venv/bin/activate

obsidianhtml convert

echo "copying custom ressources"
cp ressources/* docs/

echo "done converting."

echo "starting server for checking results, exit with CTRL+C"
obsidianhtml serve --directory docs
