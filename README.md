## Nginx Reverse Proxy

[https://hub.docker.com/r/jwilder/docker-gen/](https://hub.docker.com/r/jwilder/docker-gen/)

Download `docker-gen`

```
$ wget https://github.com/jwilder/docker-gen/releases/download/0.7.3/docker-gen-linux-amd64-0.7.3.tar.gz
$ tar xvzf docker-gen-linux-amd64-0.7.3.tar.gz
$ sudo cp ./docker-gen /usr/local/bin/docker-gen
```

##### Templates

```
$ mkdir -p /tmp/templates && cd /tmp/templates
$ curl -o nginx.tmpl https://raw.githubusercontent.com/jwilder/docker-gen/master/templates/nginx.tmpl
```