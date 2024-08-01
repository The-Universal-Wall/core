docker build -t tuw .


docker run -p 80:80 tuw

docker run -p 80:80 -e PROXY_DOMAIN=www.XXXX.fr -e COOKIE='COOKIE' tuw


