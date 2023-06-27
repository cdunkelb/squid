docker service rm squid-proxy
docker config rm squid-config
docker secret rm squid-secret
docker config create squid-config squid.conf
docker secret create squid-secret passwd
docker service create --name squid-proxy --publish published=8080,target=3128  ubuntu/squid:latest
