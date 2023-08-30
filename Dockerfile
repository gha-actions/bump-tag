FROM node:18-alpine
LABEL "repository"="https://github.com/gha-actions/bump-tag"
LABEL "homepage"="https://github.com/gha-actions/bump-tag"
LABEL "maintainer"="Jaynath Ray"

RUN apk --no-cache add bash git curl jq && npm install -g semver

COPY entrypoint.sh /entrypoint.sh

# Make the entrypoint script executable
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
