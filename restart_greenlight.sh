docker-compose down
./scripts/image_build.sh wolectron/greenlight release-v2
docker-compose up -d
cat ./greenlight.nginx | sudo tee /etc/bigbluebutton/nginx/greenlight.nginx
service nginx restart
