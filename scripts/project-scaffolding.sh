#!/bin/bash

# Set the root directory
ROOT_DIR="automation-utils"

echo "Creating $ROOT_DIR directory structure..."

# Create root folders
mkdir -p $ROOT_DIR/{scripts,.github/workflows,shared/{utils,prompt-templates},docs}

# Create main project directories
mkdir -p $ROOT_DIR/projects/{node/{link-curator,pm-slack-agent},python/{podcast-generator,test-data-gen},appscript/{drive-manager,sheet-actions},slack-apps/{pm-agent,todo-capture}}

# Create placeholder files
touch $ROOT_DIR/README.md
touch $ROOT_DIR/package.json
touch $ROOT_DIR/requirements.txt
touch $ROOT_DIR/scripts/setup.sh
touch $ROOT_DIR/.github/workflows/ci.yml
touch $ROOT_DIR/docs/{CONTRIBUTING.md,project-setup.md}

# Node project files
touch $ROOT_DIR/projects/node/link-curator/{package.json}
mkdir -p $ROOT_DIR/projects/node/link-curator/src

touch $ROOT_DIR/projects/node/pm-slack-agent/{package.json}
mkdir -p $ROOT_DIR/projects/node/pm-slack-agent/src

# Python project files
touch $ROOT_DIR/projects/python/podcast-generator/{main.py,requirements.txt}
touch $ROOT_DIR/projects/python/test-data-gen/{generate.py,requirements.txt}

# AppScript files
touch $ROOT_DIR/projects/appscript/drive-manager/Code.gs
touch $ROOT_DIR/projects/appscript/sheet-actions/Code.gs

# Slack Apps
mkdir -p $ROOT_DIR/projects/slack-apps/pm-agent/handlers
touch $ROOT_DIR/projects/slack-apps/pm-agent/app.json

touch $ROOT_DIR/projects/slack-apps/todo-capture/{transcribe.js,app.json}

echo "✅ Project structure for $ROOT_DIR created successfully!"
