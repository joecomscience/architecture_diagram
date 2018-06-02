FROM alpine as stage
RUN apk add --no-cache ca-certificates tzdata

FROM scratch
LABEL maintainer="Teerawit Laothong <joeteerawit@gmail.com>"

COPY --from=stage /usr/share/zoneinfo /usr/share/zoneinfo
COPY --from=stage /etc/ssl/certs/ca-certificates.crt /etc/ssl/certs/ca-certificates.crt
