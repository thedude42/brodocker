# brodocker
Dockerfile and source files for building a Docker image from which to run the Bro (now Zeke) IDS

## Overview

Dockerfile build from phusion/baseimage to run the Bro IDS.

## Repository Contents

The Dockrfile can be built as-is by simply cloning the repo, cd'ing to it and running `docker build .` (including a -t to add a tag is suggested).

Additionally there are source files for building the image, and reference copies of the main Bro config files.

## Image Usage

The file **cmd** has the following contents:

```
docker run -it --name $CONTAINER_NAME --network host --volumes-from $BROLOGS_VOL $IMAGE_NAME
```

Because of the `--network host` option, as of this writing this image will not function as expected on Mac or Windows.

The `$BROLOGS_VOL` value should be an image that has volumes mounted at the following destinations:

```
"/var/log/bro"
"/var/spool/bro"
"/etc/bro"
```

