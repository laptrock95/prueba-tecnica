
FROM node:18.15.0


WORKDIR /app


COPY . /app


RUN npm install


ENV PORT=8000


USER root

RUN chown -R node:node /app

USER node


EXPOSE $PORT


CMD [ "npm", "run", "start" ]
