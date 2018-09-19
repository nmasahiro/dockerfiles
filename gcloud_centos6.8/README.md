## pull the image

```
$ docker pull nmasahiro/centos_gcloud:newest
```

## run background

```
$ docker run -dt --name batch-server nmasahiro/centos_gcloud:newest
```

## login the container

```
$ docker exec -it batch-server /bin/bash
```

## initialize gcloud configuration

```
[root@c8ad54ad1d1b /]# gcloud init
```

