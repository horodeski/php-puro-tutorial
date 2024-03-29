#!/bin/bash
echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc

pdm completion bash >> ~/.bash_completion

pdm --pep582 >> ~/.bashrc

pdm config python.use_venv false

pdm plugin add pdm-vscode pdm-autoexport pdm-django

echo '
[[tool.pdm.autoexport]]
filename = "requirements.txt"
without-hashes = "true"
' >> pyproject.toml

source ~/.bashrc