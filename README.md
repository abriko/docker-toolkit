# [Toolkit](https://github.com/abriko/docker-toolkit)
Toolkit for container development/Devops, [Docker hub](https://hub.docker.com/r/abriko/toolkit).

## Images

### Boxs
Out of the Box development/Devops environment, but have large size of image.

- `abriko/toolkit:latest` for development/networking usage.
- `abriko/toolkit:k8s` for container/kubernetes usage.
- `abriko/toolkit:iac` for infrastructure/AWS development usage.
- `abriko/toolkit:python_dev` for infrastructure/python development usage, base on `abriko/toolkit:iac`.

### Stand-alone 
Uing docker image distribution common tools.

- `abriko/toolkit:kubectl`.
- `abriko/toolkit:kustomize`.
- `abriko/toolkit:k9s`.
