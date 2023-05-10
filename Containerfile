FROM registry.fedoraproject.org/fedora:38
LABEL maintainer=DragonLich@pacse.eu

RUN set -ex; \
  dnf update -y; \
  dnf install -y borgbackup; \
  dnf clean all
