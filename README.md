# matrix-riot-docker
an all-in-one docker compose setup for a personal riot client and matrix server

usage
=====
Update nginx.conf and nginx.init.conf file by replacing example.com references with your domain

Fill out the .env file with your fully qualified domain name and postgres password

If you need to generate certs via letsencrypt first you'll want to start the init docker compose script:
```
docker-compose -f docker-compose.init.yml up
```
then run renew certs with your fully qualified domain name
```
./renew-cert.sh chat.example.com
```
this will hit your nginx proxy with the correct endpoints to authenticate with lets-encrypt, filling out your certs and certs-data folders if successfull.

Then you just run
```
docker-compose up
```
to startup everything
