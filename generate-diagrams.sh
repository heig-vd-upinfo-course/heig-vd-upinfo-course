#!/usr/bin/env bash

## Variables
WORKDIR=$(pwd)
MERMAID_DOCKER_IMAGE="ghcr.io/mermaid-js/mermaid-cli/mermaid-cli:11.16.0"

## Script
# Check if Mermaid is available locally
if [ -f "/home/mermaidcli/node_modules/.bin/mmdc" ]; then
    echo "Mermaid installed locally, using it..."
    MERMAID_CMD=(/home/mermaidcli/node_modules/.bin/mmdc -p /puppeteer-config.json)
else
    echo "Mermaid not installed, using its Docker image..."
    MERMAID_CMD=(
        docker run --rm
        --volume="${WORKDIR}:/data"
        --user "$(id -u):$(id -g)"
        "$MERMAID_DOCKER_IMAGE"
    )
fi

# Enable for recursive globbing
shopt -s globstar nullglob

# Convert diagrams
MERMAID_ARGS=(
    --backgroundColor transparent
    --quiet
)

echo "Converting diagrams to SVG files..."

for mmd_file in **/*.mmd; do
    svg_file="${mmd_file%.mmd}.svg"
    "${MERMAID_CMD[@]}" "${MERMAID_ARGS[@]}" --input "$mmd_file" --output "$svg_file"
done

echo "All diagrams processed successfully!"
