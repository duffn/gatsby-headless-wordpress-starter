# Unmaintained

_This repository is archived and unmaintained. Use at your own risk._

# Gatsby Headless WordPress Starter

This is the fastest and easiest way to get a development environment up and running with headless WordPress and Gatsby.

This includes:

- [WordPress](https://wordpress.org/) - This is WordPress.
  - [WPGraphQL](https://www.wpgraphql.com/) - Provides a GraphQL schema for your WordPress site.
  - [WPGatsby](https://github.com/gatsbyjs/wp-gatsby) - Optimizes your WordPress site for Gatsby.
- [wp-cli](https://wp-cli.org/) - The WordPress CLI for easily creating a new WordPress site.
- [MySQL](https://www.mysql.com/) - You know, a database.
- [Gatsby](https://www.gatsbyjs.com/) - A React-based open source framework for creating websites and apps.
  - [gatsby-source-wordpress-experimental](https://github.com/gatsbyjs/gatsby-source-wordpress-experimental) - The officially recommended way to use WordPress with Gatsby.

**Note**: This starter is meant for local development and evaluation purposes only.

## Installation

You must have [git](https://git-scm.com/), [Docker](https://www.docker.com/) and [docker-compose](https://docs.docker.com/compose/) installed on your machine.

This has been tested on macOS and it should work on Linux. I don't know about Windows.

Run either the automatic or manual installation below and visit http://localhost:8000 for Gatsby and http://localhost:8001/wp-admin/ for WordPress.

The default WordPress admin credentials are `admin` and `secret`.

### Automatically

```bash
bash -c "$(curl https://raw.githubusercontent.com/duffn/gatsby-headless-wordpress-starter/main/install.sh)"
```

### Manually

It's a good idea to download and review unknown scripts from the internet. So, you may want to clone this repository and run the script instead.

```bash
wget https://raw.githubusercontent.com/duffn/gatsby-headless-wordpress-starter/main/install.sh
# Review the script here.
bash install.sh
```

The script doesn't do anything besides check for required dependencies and run `docker-compose`, so you can just as well clone the repository and run `docker-compose` yourself.

```bash
git clone git@github.com/duffn/gatsby-headless-wordpress-starter
cd gatsby-headless-wordpress-starter
docker-compose up
```

## TODO

- [ ] Test on Linux.
- [ ] Test on Windows.
- [ ] Allow option for MariaDB as a database.

## License

[MIT](https://opensource.org/licenses/MIT)
