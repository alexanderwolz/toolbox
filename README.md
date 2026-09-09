# Toolbox

![GitHub release (latest by date)](https://img.shields.io/github/v/release/alexanderwolz/toolbox)
![GitHub](https://img.shields.io/badge/alpine-3.24.1-orange)
![GitHub code size in bytes](https://img.shields.io/github/languages/code-size/alexanderwolz/toolbox)
![GitHub all releases](https://img.shields.io/github/downloads/alexanderwolz/toolbox/total?color=informational)

## 🧑‍💻 About

This repository provides a minimal Alpine-based Docker image bundling a curated set of CLI tools for shell scripting, automation and CI steps, so common tasks don't require pulling a different single-purpose image every time.

| Tool | Purpose |
|---|---|
| `bash` | a proper shell |
| `curl` | HTTP requests |
| `jq` | JSON processing |
| `yq` | YAML processing |
| `coreutils` | full GNU utilities (busybox's are too limited) |
| `ca-certificates` | trusted TLS out of the box |
| `bind-tools` | `dig`, `nslookup` and friends |

Runs as a non-root user (`toolbox`, uid 1000) by default.

## 🛠️ Build

1. ```docker build -t alexanderwolz/toolbox .```

## 🐳 Dockerhub

1. ```docker pull alexanderwolz/toolbox:3.24.1```

## 📦 Use as base image

```dockerfile
FROM alexanderwolz/toolbox:3.21.7
COPY my-script.sh .
CMD ["bash", "my-script.sh"]
```

- - -

Made with ❤️ in Bavaria
<br>
© 2026, <a href="https://www.alexanderwolz.de"> Alexander Wolz
