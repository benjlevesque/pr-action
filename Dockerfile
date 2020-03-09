FROM alpine:latest
LABEL "com.github.actions.name"="pr-action"
LABEL "com.github.actions.description"="Retrieve PR information"
RUN apk add --no-cache \
    jq \
    curl \
    git
COPY "get-pr-info.sh" /usr/bin/get-pr-info
CMD ["sh", "/usr/bin/get-pr-info"]