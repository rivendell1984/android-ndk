FROM ubuntu:18.04

LABEL maintainer="rivendell1984@gmail.com"
LABEL version="1.0"
LABEL description="This is custom Docker Image for Android NDK."

ARG NDK_VERSION="r21d"

ENV ANDROID_NDK_HOME    /opt/android-ndk

RUN apt-get update -qq                                       && \
    DEBIAN_FRONTEND=noninteractive apt-get -qy install wget unzip make file && \
    apt-get -qy clean                                        && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN mkdir /opt/android-ndk-tmp                                                                   && \
    cd /opt/android-ndk-tmp                                                                      && \
    wget -q https://dl.google.com/android/repository/android-ndk-${NDK_VERSION}-linux-x86_64.zip && \
    unzip -q android-ndk-${NDK_VERSION}-linux-x86_64.zip                                         && \
    mv ./android-ndk-${NDK_VERSION} ${ANDROID_NDK_HOME}                                          && \
    cd ${ANDROID_NDK_HOME}                                                                       && \
    rm -rf /opt/android-ndk-tmp