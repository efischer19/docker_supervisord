# docker_supervisord

A quick proof-of-concept showing that you can easily run supervisord inside a docker container.

To try it yourself:
- clone this repo, `cd` into it
- `docker build .`
- `docker run <image_sha>`
- <different terminal window, after some time has passed> `docker stop <container_sha>`
