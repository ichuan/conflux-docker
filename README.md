# conflux-docker
Dockercfxe for conflux


# Building

```bash
docker build -t conflux .
```

# Running

```bash
# block dir
mkdir data
docker run --rm -itd --name cfx -p 12537:12537 -v `pwd`/data:/opt/coin/data conflux
```


# Using pre-built docker image

Using automated build image from <https://hub.docker.com/r/mixhq/conflux/>:

```bash
docker run --rm -itd --name cfx -p 12537:12537 -v `pwd`/data:/opt/coin/data mixhq/conflux
```
