# Docker Container Image: Alpine with Ansible

[![Build Status](https://travis-ci.com/erjac77/docker-alpine-ansible.svg?branch=master)](https://travis-ci.com/erjac77/docker-alpine-ansible)
[![Docker Build Status](https://img.shields.io/docker/cloud/build/erjac77/alpine-ansible.svg)](https://hub.docker.com/r/erjac77/alpine-ansible)
[![License](https://img.shields.io/badge/License-Apache%202.0-yellowgreen.svg)](https://opensource.org/licenses/Apache-2.0)

An Alpine Docker container image used for running Ansible playbooks.

## Usage

1. [Install Docker](https://docs.docker.com/install/).

2. Pull this image from Docker Hub.

   `docker pull erjac77/alpine-ansible:latest`

3. Run a container using the image.

   `docker run --rm -it erjac77/alpine-ansible <command>`

## Examples

### Run playbook

`docker run --rm -it -v $PWD:/ansible/playbooks -w /ansible/playbooks erjac77/alpine-ansible ansible-playbook site.yml -i hosts`

### Install role from Galaxy

`docker run --rm -it -v $PWD:/ansible/playbooks -w /ansible/playbooks erjac77/alpine-ansible ansible-galaxy install -r requirements.yml --roles-path roles`

## License

Apache 2.0

## Author Information

Eric Jacob ([@erjac77](https://github.com/erjac77))
