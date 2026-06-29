#!/usr/bin/env bash

## Variables
WORKDIR=$(pwd)
MARP_DOCKER_IMAGE="marpteam/marp-cli:v4.2.3"

## Script
# Check if Marp is installed locally
if command -v "marp-cli.js" > /dev/null 2>&1; then
    echo "Marp installed locally, using it..."
    MARP_CMD=(marp-cli.js)
else
    echo "Marp not installed, using its Docker image..."
    MARP_CMD=(
        docker run --rm
        --entrypoint="marp-cli.js"
        --volume="${WORKDIR}:/home/marp/app"
        --user="$(id -u):$(id -g)"
        "$MARP_DOCKER_IMAGE"
    )
fi

# Enable for recursive globbing
shopt -s globstar nullglob

echo "Removing all previous generated presentations..."
rm -f **/*-presentation.pdf
rm -f **/presentation.html

# Convert presentations
MARP_ARGS=(
    --config-file .marp/config.yaml
    --parallel $(nproc)
    **/_PRESENTATION.md
)

echo "Converting presentations to HTML..."
"${MARP_CMD[@]}" "${MARP_ARGS[@]}"

echo "Converting presentations to PDF..."
"${MARP_CMD[@]}" "${MARP_ARGS[@]}" --pdf

# Rename files
echo "Renaming HTML files'..."
for file in **/_PRESENTATION.html; do
    path="$(dirname "$file")"

    mv "$file" "$path/presentation.html"
done

echo "Renaming PDF files'..."
for file in **/_PRESENTATION.pdf; do
    path="$(dirname "$file")"
    directory="$(basename "$path")"

    mv "$file" "$path/${directory}-presentation.pdf"
done

echo "All presentations processed successfully!"
