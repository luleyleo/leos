recipe := "./recipes/recipe.yml"

default:
    just --list

# Format just files
fmt-justfiles:
    just --unstable --fmt -f justfile
    just --unstable --fmt -f files/justfiles/*.just

# Check that just files are correctly formatted
check-justfiles:
    just --unstable --fmt --check -f justfile
    just --unstable --fmt --check -f files/justfiles/*.just

# Run bluebuild to generate the image
build:
    bluebuild build {{ recipe }}

# Run bluebuild to generate the container file
generate:
    bluebuild generate {{ recipe }} -o Containerfile

# Run bluebuild to expand the recipe
display:
    bluebuild generate --display-full-recipe {{ recipe }}
