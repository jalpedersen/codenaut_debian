FROM debian:9

RUN apt-get clean && apt-get update && apt-get install -y inotify-tools ca-certificates locales imagemagick

RUN locale-gen "en_US.UTF-8"
ENV LANGUAGE="en_US.UTF-8"
ENV LANG="en_US.UTF-8"
ENV LC_ALL="en_US.UTF-8"
ENV LC_CTYPE="en_US.UTF-8"
RUN sed -i -e 's/# en_US.UTF-8 UTF-8/en_US.UTF-8 UTF-8/' /etc/locale.gen
RUN echo "LANG=en_US.UTF-8" > /etc/default/locale
RUN dpkg-reconfigure --frontend=noninteractive locales

ENV REPLACE_OS_VARS=true


