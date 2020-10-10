FROM node:12

RUN mkdir /app
WORKDIR /app

COPY package.json yarn.lock /app/
RUN yarn install --pure-lockfile

RUN curl https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh -o /usr/local/bin/wait-for-it \
    && chmod +x /usr/local/bin/wait-for-it

EXPOSE 8000

CMD ["wait-for-it", "wordpress:8001", "--", "yarn", "develop", "--host=0.0.0.0"]
