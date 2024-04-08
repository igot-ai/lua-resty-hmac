FROM openresty/openresty:bullseye-fat

WORKDIR /app

COPY . /app

RUN apt-get update && apt-get install -y make cpanminus && cpanm -n Test::Nginx && apt-get clean

RUN make all
