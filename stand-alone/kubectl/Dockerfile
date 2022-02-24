FROM abriko/toolkit:base
ENV KUSTOMIZE_VERSION=4.5.2
RUN  set -ex \
    && curl -L -o kustomize.tar.gz https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz \
    && tar xzf kustomize.tar.gz

FROM scratch
COPY --from=0 /kustomize /kustomize

ENTRYPOINT ["/kustomize"]