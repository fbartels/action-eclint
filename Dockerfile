FROM golang:alpine3.10

SHELL ["/bin/ash", "-eo", "pipefail", "-c"]

RUN go install gitlab.com/greut/eclint && \
    eclint -version

RUN wget -O - -q https://raw.githubusercontent.com/reviewdog/reviewdog/master/install.sh | sh -s -- -b /usr/local/bin/ v0.9.14
#RUN apk --no-cache add jq git grep

COPY entrypoint.sh /entrypoint.sh

WORKDIR /reviewdog

ENTRYPOINT ["/entrypoint.sh"]
