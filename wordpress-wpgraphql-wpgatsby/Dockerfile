FROM wordpress:5.5

ARG WPGRAPHQL_VERSION=v0.13.3
ARG WPGATSBY_VERSION=v0.4.17

LABEL maintainer="duffn@outlook.com" 

RUN mkdir -p /usr/src/wordpress/wp-content/plugins/wp-graphql \
  && curl -L https://github.com/wp-graphql/wp-graphql/archive/${WPGRAPHQL_VERSION}.tar.gz \
  | tar xvz -C /usr/src/wordpress/wp-content/plugins/wp-graphql --strip-components=1 

RUN mkdir -p /usr/src/wordpress/wp-content/plugins/wp-gatsby \
  && curl -L https://github.com/gatsbyjs/wp-gatsby/archive/${WPGATSBY_VERSION}.tar.gz \
  | tar xvz -C /usr/src/wordpress/wp-content/plugins/wp-gatsby --strip-components=1 

RUN curl https://raw.githubusercontent.com/vishnubob/wait-for-it/master/wait-for-it.sh -o /usr/local/bin/wait-for-it \
  && chmod +x /usr/local/bin/wait-for-it

COPY start.sh /usr/local/bin/start.sh

EXPOSE 8001

CMD ["wait-for-it", "db:3306", "--", "/usr/local/bin/start.sh"]
