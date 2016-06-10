# docker-nginx-alpine

Docker file for Deluge using Alpine linux

### Build from Dockerfile :

```bash
git clone https://github.com/Shakarang/nginx-alpine.git
cd nginx-alpine
docker build -t shakarang/nginx-alpine .
```

### Ports :

Available ports are :

- 80
- 443

### Volumes :

You can bind multiple volumes :

- /etc/nginx/sites-enabled
- /etc/nginx/certs
- /etc/nginx/conf.d
- /var/log/nginx
- /var/www
- /usr/share/nginx/html

### Running :

#### Compose :

```
nginx:
  container_name: nginx-alpine
  image: shakarang/nginx-alpine
  ports:
    - 8080:80
    - 4443:443
  volumes:
    - ./nginx/sites-enabled:/etc/nginx/sites-enabled
    - ./nginx/certs:/etc/nginx/certs
    - ./nginx/conf.d:/etc/nginx/conf.d
    - ./nginx/log:/var/log/nginx
    - ./nginx/www:/var/www
  restart: always
```
