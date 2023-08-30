## Insatll plugin

```bash
helm plugin install https://github.com/AGou-ops/helm-repo-images
```

## Usage

```bash
# list all images from local charts
helm repo-images .

# list all images from helm repo
helm repo-images <HELM_REPO>
# ex.
helm repo-images rancher-latest/rancher
```
