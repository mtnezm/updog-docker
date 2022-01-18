## Description

Docker image for [Updog](https://github.com/sc0tfree/updog).


## Build

To build the image locally, execute:

```
docker buildx build -t updog-docker .
```


## Usage

For a quick start, just run:

```
docker run -d --name updog-docker -p 9090:9090 updog-docker
```

Then open a browser and navigate to http://localhost:9090


## Persisting data

Mapping a volume to the container is possible by adding `-v /path/to/data:/data` to the `docker run` command:

```
docker run -d --name updog-docker -v /path/to/data:/data -p 9090:9090 updog-docker
```
