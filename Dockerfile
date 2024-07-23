FROM artifactory.rtr.cloud/docker/alpine:3.9

# hadolint ignore=DL3018
RUN apk add --update --no-cache bash ca-certificates curl git jq openssh

# hadolint ignore=DL3013
RUN pip install yamllint

RUN ["bin/sh", "-c", "mkdir -p /src"]

COPY ["src", "/src/"]

ENTRYPOINT ["/src/entrypoint.sh"]
