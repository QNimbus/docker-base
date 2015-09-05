# docker base images
This is a base image Dockerfile

Build from docker file
```
git clone https://github.com/QNimbus/docker-base.git
cd docker-base
docker build --rm --no-cache -t qnimbus/docker-base .
```

If you would like to interactively run the container:
```
docker run -it -h ${HOSTNAME} --name=base -v /etc/localtime:/etc/localtime:ro qnimbus/docker-base bash
```
