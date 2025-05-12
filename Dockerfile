ARG FROM_IMAGE
ARG FROM_VERSION

FROM ${FROM_IMAGE}:${FROM_VERSION}

COPY run.sh "${CONTAINER_RUN}"
RUN chmod +x "${CONTAINER_RUN}"
RUN addgroup step && adduser step -DH -G step

ENV STEP_VERSION=0.28.1-r4

RUN apk add --no-cache cmd:step-ca=${STEP_VERSION}

USER step

