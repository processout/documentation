# Documentation

This is the Ruby version of the documentation.

# Prerequisites

This project uses [Brew](https://brew.sh/index_fr) for package management. You can install Brew globally using `brew`:

```shell
$ /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
```

Next, we need to use Brew to install Ruby :

```shell
$ brew install ruby
```

Next, we need to use [Bundler](https://bundler.io/) to install gems :

```shell
$ gem install bundler
```

Finally, we need to install [Docker](https://www.docker.com/) with this following link: (https://docs.docker.com/get-docker/), to build the project.

# Getting Set Up

After completing the prerequisites process, you can use these following commands:

First, clone the documentation repository :

```shell
$ git clone https://github.com/processout/documentation.git
```

Next, we need to install the Ruby gems :

```shell
$ bundle install
```

Next, open Docker on your computer and run this following line :

```shell
$ make build
```

Finally, you need to create an external network named Processout :

```shell
$ docker network create processout
```

# Local server

After completing the getting set up process, you can run the documentation locally using the following command:

```shell
$ make test
```

You can then access the documentation by visiting `http://127.0.0.1:4567` in your favourite browser.

# Deploy

Staging and production deployments are done from the command line, and the `makefile` includes some scripts that simplify this process.

To do a staging deployment, run:

```shell
$ make deploy-staging
```

Similarly, production deployments can be done using by running this:

```shell
$ make deploy-production
```

Welcome on board !
