docker run -it --rm \
	-v /${PWD}/certs:/etc/letsencrypt \
	-v /${PWD}/certs-data:/data/letsencrypt \
	deliverous/certbot       certonly \
	--webroot --webroot-path=/data/letsencrypt -d $1
