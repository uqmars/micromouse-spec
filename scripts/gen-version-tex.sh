#!/bin/bash
VERSION=$(yq '.release.version' config.toml)
echo "Version: $VERSION"

echo "\\newcommand{\\rulesversion}{$VERSION}" > version.tex
