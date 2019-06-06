# Challenge Docker

Start a bash shell! 

Be sure Docker daemon is running:
```shell
docker version
```

Search oficial nginx repo on Docker Hub (default registry):
```shell
docker search --filter "is-official=true" nginx
```

Get the images (tags) within nginx repo:
```shell
curl -L -s 'https://registry.hub.docker.com/v2/repositories/library/nginx/tags?page_size=1024'|jq '."results"[]["name"]'
```

Choose the newest (without "alpine" and "perl") e.g. "1.17.0"
```shell
docker pull nginx:1.17.0
docker image ls nginx:1.17.0
```

Examine the manifesto of the image:
```shell
docker inspect nginx:1.17.0
```

Build your own image called "red" locally:
```shell
cd Docker
cat Dockerfile
docker build -t my-nginx:1.17.0-red .
docker image ls
```

Run the new image locally:
```shell
docker run --name red --rm -d -p 80:80 my-nginx:1.17.0-red
```
Test with your local browser!

Clean up:
```shell
docker ps
docker kill red
docker ps -a
docker image ls
```