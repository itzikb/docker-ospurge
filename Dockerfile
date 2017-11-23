FROM fedora:27
RUN useradd -ms /bin/bash fedora
RUN cd ~ && dnf -y install python-pip python-virtualenv gcc redhat-rpm-config  python3-devel

USER fedora
WORKDIR /home/centos
RUN virtualenv -p python3 ospurge && cd ospurge && source bin/activate && pip install ospurge
CMD ['/bin/bash']
