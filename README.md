## Nginx Reverse Proxy

[https://hub.docker.com/r/jwilder/docker-gen/](https://hub.docker.com/r/jwilder/docker-gen/)

Download `docker-gen`

```sh
$ wget https://github.com/jwilder/docker-gen/releases/download/0.7.3/docker-gen-linux-amd64-0.7.3.tar.gz
$ tar xvzf docker-gen-linux-amd64-0.7.3.tar.gz
$ sudo cp ./docker-gen /usr/local/bin/docker-gen
```

#### Templates

```sh
$ mkdir -p /tmp/templates && cd /tmp/templates
$ curl -o nginx.tmpl https://raw.githubusercontent.com/jwilder/docker-gen/master/templates/nginx.tmpl
```

Add `VIRTUAL_HOST` env value to the nginx target

```
environment:
  - VIRTUAL_HOST=api.announces.dev
```

#### Big header Response Problem

Add to the Proxy Nginx `nginx.conf`

```
proxy_buffer_size   128k;
proxy_buffers   4 256k;
proxy_busy_buffers_size   256k;
```

add to project nginx `default.conf` file:

```
fastcgi_buffers 16 32k;
fastcgi_buffer_size 32k;

```
