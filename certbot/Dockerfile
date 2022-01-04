FROM certbot/dns-cloudflare:v1.7.0

ARG CLOUDFLARE_API_TOKEN


RUN mkdir -p /.secrets/certbot/
RUN echo "dns_cloudflare_api_token = ${CLOUDFLARE_API_TOKEN}" >/.secrets/certbot/cloudflare.ini
RUN cat /.secrets/certbot/cloudflare.ini

CMD "certonly --agree-tos --dns-cloudflare --dns-cloudflare-credentials /.secrets/certbot/cloudflare.ini -m ${EMAIL} -d ${DOMAIN} -d ${WILDCARD_DOMAIN} -n"