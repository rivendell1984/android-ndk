Android NDK Docker Image
========================


This project aims to provide a docker image that contains android ndk.

Build it
--------


To build it, simply run:

```bash
$> docker build --build-arg NDK_VERSION=r21d -t android-ndk:r21d .
```

Run it
------

 To run the previously built image, runs bash for example

```bash
$> docker run -it --rm -v $SOURCE_DIRECTORY:/sources -w /sources android-ndk:r21d bash
```

