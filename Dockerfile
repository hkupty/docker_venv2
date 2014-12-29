FROM base/archlinux
MAINTAINER Henry "Ingvij" Kupty <hkupty@gmail.com>

RUN pacman -Sy python2{,-virtualenv,-pip} base{,-devel} --noconfirm

RUN virtualenv-2.7 /opt/.venv

ENV REQUIREMENTS_PATH /opt/requirements.txt

ONBUILD RUN source /opt/.venv/bin/activate && \
            pip install U -r $REQUIREMENTS_PATH
