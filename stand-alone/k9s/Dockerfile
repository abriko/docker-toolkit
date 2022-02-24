FROM abriko/toolkit:base
ENV K9S_VERSION=0.25.18
RUN  set -ex \
    && curl -L -o k9s.tar.gz https://github.com/derailed/k9s/releases/download/v${K9S_VERSION}/k9s_Linux_x86_64.tar.gz \
    && tar xzf k9s.tar.gz

FROM scratch
COPY --from=0 /k9s /k9s

ENTRYPOINT ["/k9s"]