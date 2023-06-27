docker service rm squid-proxy
docker config rm squid-config
docker config rm squid-confd
docker secret rm squid-secret

docker config create squid-config squid.conf
docker config create squid-confd debian.conf

docker secret create squid-secret passwd

docker service create --name squid-proxy \
  --config source=squid-config,target=/etc/squid/squid.conf \
  --config source=squid-confd,target=/etc/squid/conf.d/debian.conf \
  --secret source=squid-secret,target=/etc/squid/passwd \
  --publish published=8080,target=3128 \
  ubuntu/squid:latest

