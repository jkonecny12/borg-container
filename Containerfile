# Container to provide easy access to the borg command on CoreOS system.
# This container is just wrapping the borg command so it can be easily used.
#
# Ideally mount your backup place to /backup in the container.

FROM registry.fedoraproject.org/fedora:38
LABEL maintainer=DragonLich@pacse.eu

RUN set -ex; \
  dnf update -y; \
  dnf install -y borgbackup; \
  dnf clean all

RUN mkdir /backup

WORKDIR /backup

ENTRYPOINT ["/usr/bin/borg"]
