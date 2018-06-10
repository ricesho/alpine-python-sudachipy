# alpine-sudachipy

This image is based on [Alpine Linux](https://alpinelinux.org/) and contains [SudachiPy](https://github.com/WorksApplications/SudachiPy).

## Requirement

* Docker

## Usage

```
git clone https://github.com/ricesho/alpine-sudachipy.git
cd alpine-sudachipy
docker build -t alpine-sudachipy .
docker run -it alpine-sudachipy:latest /bin/ash
```
