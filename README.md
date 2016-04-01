roshibuilder
============

Build a statically-linked ```roshi-server```.

Works in conjunction with [cskstrngth/roshidocker](https://github.com/cskstrngth/roshidocker) to create a container from inside a container.

Based on the following blog post:

http://blog.xebia.com/2014/07/04/create-the-smallest-possible-docker-container/

The Dockerfile fetches cskstrngth\roshidocker to compile ```roshi-server``` and to generate a minimalist Docker image.

The resulting image can be run as follows:
```
docker run -ti --name roshidocker cskstrngth/roshidocker -redis.instances=localhost:6379
```

Helper bash scripts are included to build/clean/run the image.