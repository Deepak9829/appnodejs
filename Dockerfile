FROM node:12.2

ENV HOME=/home/app

RUN apt-get update && apt-get install htop

COPY . $HOME/node_docker/

WORKDIR $HOME/node_docker

RUN npm install --silent --progress=false

CMD ["npm", "start"]                                                                                                                                                                                                                                                                                                                                        