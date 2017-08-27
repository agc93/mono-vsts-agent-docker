# `mono-vsts-agent-docker`

A simple Docker image based on `microsoft/vsts-agent` that has Mono preinstalled.

By default, it's based on `microsoft/vsts-agent:ubuntu-16.04-docker-17.06.0-ce-standard` and installs `mono-runtime` and `mono-devel` into the image. This adds around 350MB at time of writing.

If you are building this image yourself you can use the `tag` argument to build from a different base tag, and the `monopkg` tag to install a different Mono package (`mono-runtime` is always installed):

```bash
docker build --build-arg tag=ubuntu-16.04-standard --build-arg monopkg=mono-mcs .
```