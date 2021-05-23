# Debian Lgogdownloader(LGD)

[![pipeline status](https://gitlab.com/richardskumat/lgd/badges/master/pipeline.svg)](https://gitlab.com/richardskumat/lgd/commits/master)

Runs LGD from debian.

This image contains lgogdownloader and runs as user(uid 1000,gid 1000) for now.

This image is updated frequently.

Interactive example usage, with volume mapping for $HOME and /home/data, which
results in a bash prompt in the container:

```bash
docker run --name lgd --rm -ti -v $HOME:/home/user -v /home/data:/home/data qwe1/lgd bash
```

For example if we want the container to stay in the background, with volume mapping for $HOME and /home/data:

```bash
docker run --name lgd --rm -d -v $HOME:/home/user -v /home/data:/home/data qwe1/lgd sleep infinity
```

Then to get a prompt in the backgrounded container:

```bash
docker exec -ti lgd bash
```

Ansible docker_compose playbook example:

```yaml
        lgd:
         image: qwe1/lgd:buster
         restart: unless-stopped
         container_name: lgd
         command: sleep infinity
         networks:
           - media
         volumes:
           - /home/data:/home/data
           - /home/user:/home/user
         labels:
           - "traefik.enable=false"
```

## Links to source code and build logs

Gitlab

https://gitlab.com/richardskumat/lgd

Gitlab pipelines

https://gitlab.com/richardskumat/lgd/pipelines

Github

https://github.com/richardskumat/lgd

Dockerhub

https://hub.docker.com/r/qwe1/lgd
