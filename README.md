# Borg backup container
Container with borg backup for my personal use.

# How to use
Container to provide easy access to the borg command on CoreOS system.
This container is just wrapping the borg command so it can be easily used.
Ideally mount your backup place to /backup in the container which is 
current working directory for this container.

To start a backup don't forget that you need to mount what you want to 
backup into the container. Otherwise it will backup just inners of the
container instead of your host.
