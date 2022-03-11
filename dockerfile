FROM ubuntu
COPY ./script.sh/ .
COPY ./new.jpeg/ .
RUN chmod ugo+x script.sh && apt-get update && apt-get -y install imagemagick
CMD ./script.sh
