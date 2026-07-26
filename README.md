## Install

```bash
set -o pipefail

curl -fsSL --proto '=https' --tlsv1.2 --retry 3 --retry-all-errors \
  https://raw.githubusercontent.com/latebra/latebra/refs/heads/main/init/00-setup.sh | bash

curl -fsSL --proto '=https' --tlsv1.2 --retry 3 --retry-all-errors \
  https://raw.githubusercontent.com/latebra/latebra/refs/heads/main/init/01-cleanup.sh | bash
```

```bash
curl -fsSL --proto '=https' --tlsv1.2 --retry 3 --retry-all-errors \
  https://raw.githubusercontent.com/latebra/latebra/refs/heads/main/init/09-identity.sh | bash
```
