# bitcoin-core

Containerized bitcoin-core in an image.

## Usage

Generate GitHub [Personal Access Token Classic](https://docs.github.com/en/packages/working-with-a-github-packages-registry/working-with-the-container-registry#authenticating-with-a-personal-access-token-classic)

```
# read PAT (paste & enter)
read CR_PAT

# login
echo $CR_PAT | docker login ghcr.io -u joosthb --password-stdin

docker run --rm ghcr.io/joosthb/bitcoin-core-container:release --help
```

Testrun

```
docker build --tag bitcoin-core-container . &&
docker run -v `pwd`/data:/root/.bitcoin -ti --rm bitcoin-core-container /bin/sh
```
