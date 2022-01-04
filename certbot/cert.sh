certbot certonly  -n \
--agree-tos \
--dns-cloudflare \
--dns-cloudflare-credentials /.secrets/certbot/cloudflare.ini \
-m $EMAIL \
-d $DOMAIN \
-d $WILDCARD_DOMAIN