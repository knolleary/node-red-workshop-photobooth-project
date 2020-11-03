FROM node:lts as build

RUN apt-get update \
  && apt-get install -y build-essential

WORKDIR /data

COPY ./package.json /data/

RUN npm install

COPY ./settings.js /data/
COPY ./flows.json /data/
COPY ./flows_cred.json /data/

## Release image

FROM node:lts-slim
RUN apt-get update

RUN mkdir -p /data

COPY --from=build /data /data

WORKDIR /data

ENV PORT 1880
ENV NODE_ENV=production
ENV NODE_PATH=/data/node_modules
EXPOSE 1880
CMD ["npm", "start"]
