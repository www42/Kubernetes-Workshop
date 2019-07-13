# Challenge Docker

Start a Bash shell!

Be sure your Docker daemon is running:
<details>

```bash
docker version
```
</details>


Search oficial nginx repo on Docker Hub (default registry):
<details>

```bash
docker search --filter "is-official=true" nginx
```
</details>


Get the images (tags) within nginx repo. Choose the newest, e.g. "1.17.0". Pull the image.
<details>

```bash
curl -L -s 'https://registry.hub.docker.com/v2/repositories/library/nginx/tags?page_size=1024'|jq '."results"[]["name"]'

docker pull nginx:1.17.0
docker image ls nginx:1.17.0
```
</details>


Examine the manifesto of the image:
<details>

```bash
docker inspect nginx:1.17.0
```
</details>



Build your own image called "red" locally:
<details>

```bash
cd Docker
cat Dockerfile
docker build -t my-nginx:1.17.0-red .
docker image ls
```
</details>



Run the new image locally. Test with your local browser!
<details>

```bash
docker run --name red --rm -d -p 80:80 my-nginx:1.17.0-red
```
</details>




Clean up.
<details>

```bash
docker ps
docker kill red
docker ps -a
docker image ls
```
</details>