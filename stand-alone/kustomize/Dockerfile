FROM abriko/toolkit:base
RUN  set -ex \
    && curl -L -o /usr/bin/kubectl \
    "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x /usr/bin/kubectl

FROM scratch
COPY --from=0 /usr/bin/kubectl /kubectl

ENTRYPOINT ["/kubectl"]