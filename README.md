# minion-docker
Dockerfile needed to create a fully functional Minion build

Mozilla Minion is available: https://github.com/mozilla/minion

# To run:
docker run -d -p 8080:8080 --name 'minion-frontend' --link minion-backend:minion-backend 'april/mozilla-minion-frontend'