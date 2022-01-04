FROM nginx:1.16

ARG DOMAIN
ENV DOMAIN $DOMAIN

RUN apt-get update && \
  apt-get install -y apt-utils \
  locales && \
  echo "ja_JP.UTF-8 UTF-8" > /etc/locale.gen && \
  locale-gen ja_JP.UTF-8
ENV LC_ALL ja_JP.UTF-8
# 初期状態の設定ファイル
COPY ./default.conf /etc/nginx/conf.d/default.conf.template

RUN envsubst < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf

RUN cat /etc/nginx/conf.d/default.conf
RUN ls /etc/nginx/conf.d

CMD nginx -g 'daemon off;'