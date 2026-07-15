#!/usr/bin/env bash

## Variables
WORKDIR=$(pwd)
PANDOC_DOCKER_IMAGE="pandoc/latex:3-alpine"

## Script
# Check if Pandoc is installed locally
if command -v "pandoc" > /dev/null 2>&1; then
    echo "Pandoc installed locally, using it..."
    PANDOC_CMD=(pandoc)
else
    echo "Pandoc not installed, using its Docker image..."
    PANDOC_CMD=(
        docker run --rm
        --entrypoint="pandoc"
        --volume="${WORKDIR}:/data"
        --user="$(id -u):$(id -g)"
        "$PANDOC_DOCKER_IMAGE"
    )
fi

echo "Converting printable documents to PDF..."

"${PANDOC_CMD[@]}" "--output=./src/content/docs/02-premiers-pas-a-la-heig-vd/UPINFO_DONNEES_SUR_MON_ORDINATEUR.pdf" "./src/content/docs/02-premiers-pas-a-la-heig-vd/_IMPRESSION.md"

echo "All printable documents processed successfully!"
