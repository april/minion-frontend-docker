# minion-frontend-docker
Dockerfile needed to create a fully functional Minion build

Mozilla Minion is available:
* https://github.com/mozilla/minion
* https://github.com/mozilla/minion-backend
* https://github.com/mozilla/minion-frontend

# To build:
    docker build -t 'mozilla/minion-frontend' .

# To run:
    docker run -d -p 8080:8080 --name 'minion-frontend' \
      --link minion-backend:minion-backend 'mozilla/minion-frontend'
