### BUILD
FROM      tensorflow/tensorflow:2.6.0

WORKDIR   /var/app
#RUN mkdir -p /var/app/requirements
#COPY      ./requirements /var/app/requirements
#
#RUN       apk add --no-cache bzip2-dev \
#              coreutils \
#              gcc \
#              libc-dev \
#              libffi-dev \
#              libressl-dev \
#              linux-headers \
#              postgresql-dev
#
#RUN       pip install --upgrade pip && pip3 install -r /var/app/requirements/dev.txt

### RUNTIME
#FROM      alpine:3.9
#WORKDIR   /var/app
#COPY      --from=0 /usr/local /usr/local
#
#RUN       apk add --no-cache \
#            libbz2 \
#            expat \
#            libffi \
#            gdbm \
#            xz-libs \
#            ncurses-terminfo-base \
#            ncurses-terminfo \
#            ncurses-libs \
#            readline \
#            sqlite-libs \
#            xmlsec \
#            shadow \
#            bash \
#            libuuid \
#            libpq \
#            ca-certificates
##            uwsgi-python3 \
##            uwsgi-http
#
#ENV       TZ                "Etc/UTC"
#ENV       PATH              /usr/local/bin:$PATH
#ENV       PYTHONPATH        "${PYTONPATH}:/var/app"
COPY       . /var/app/
RUN        pip install -r /var/app/requirements/dev.txt
RUN        pip install https://storage.googleapis.com/tensorflow_fold/tensorflow_fold-0.0.1-py3-none-linux_x86_64.whl
