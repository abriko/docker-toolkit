FROM abriko/toolkit:base

ENV KUSTOMIZE_VERSION=4.5.2
ENV K9S_VERSION=0.25.18

RUN  set -ex \
    && apk add --no-cache --update \
        docker-cli \
    && curl -L -o /usr/bin/kubectl \
    "https://dl.k8s.io/release/$(curl -L -s https://dl.k8s.io/release/stable.txt)/bin/linux/amd64/kubectl" \
    && chmod +x /usr/bin/kubectl \
    && curl https://raw.githubusercontent.com/helm/helm/master/scripts/get-helm-3 | bash \
    && curl -L -o kustomize.tar.gz https://github.com/kubernetes-sigs/kustomize/releases/download/kustomize%2Fv${KUSTOMIZE_VERSION}/kustomize_v${KUSTOMIZE_VERSION}_linux_amd64.tar.gz \
    && tar xzf kustomize.tar.gz \
    && mv kustomize /usr/bin \
    && rm -f kustomize.tar.gz \
    && curl -L -o k9s.tar.gz https://github.com/derailed/k9s/releases/download/v${K9S_VERSION}/k9s_Linux_x86_64.tar.gz \
    && tar xzf k9s.tar.gz \
    && mv k9s /usr/bin \
    && rm -f k9s.tar.gz \
    && rm -rf /tmp/* /var/tmp/* /var/cache/apk/* /var/cache/distfiles/*
