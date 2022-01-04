FROM certbot/dns-cloudflare:v1.7.0

ARG CLOUDFLARE_API_TOKEN


RUN mkdir -p /.secrets/certbot/
RUN echo "dns_cloudflare_api_token = ${CLOUDFLARE_API_TOKEN}" >/.secrets/certbot/cloudflare.ini
RUN cat /.secrets/certbot/cloudflare.ini

COPY cert.sh .

ENTRYPOINT [  ]
