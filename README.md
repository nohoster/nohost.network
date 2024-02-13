# Welcome to [nohost.network](https://nohost.network) service repository.

Here are all the configuration files which makes the management and deployment completely automated.

Currently using the following software to make this possible:
- **Kubernetes** for orchestration
- **FluxCD** for implementing Continuous Delivery in a GitOps way
- **Helm** to install apps and services and **Kustomize** to do some config changes.
- **Prometheus** and **Fluentbit** for metrics and logs which are sent to **Grafana Cloud** for monitoring.
- **External Secrets** for secret management in **Hashicorp Vault**
- **Cert Manager** for automatic TLS certificate configuration.
- **SonarCloud** for security scanning.
- Maybe more that I might forget.

To check the way the infrastructure is configured check [nohost.infra](https://github.com/nohoster/nohost.infra) repository. \
Some backend service configurations are in [nohost.backend](https://github.com/nohoster/nohost.backend) repository and \
CI pipelines are in each app project repository.

The repository structure is based in FluxCD monorepo example: https://fluxcd.io/flux/guides/repository-structure/
