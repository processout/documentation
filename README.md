# Documentation

This is the documentation website for [ProcessOut](https://www.processout.com) (https://docs.processout.com). It is based on [Slate](https://github.com/slatedocs/slate).

# Prerequisites

This project relies on `Ruby`. For macOS users, it is recommended to use [Homebrew](https://brew.sh) to install it:

```shell
$ brew install ruby
```

Next, we need to use [RubyGems](https://rubygems.org) to install [Bundler](https://bundler.io):

```shell
$ gem install bundler
```

Finally, we need to install [Docker](https://www.docker.com/) with this following link: (https://docs.docker.com/get-docker/), to build the project.

# Getting Set Up

After completing the prerequisites process, you can use these following commands:

First, clone the documentation repository:

```shell
$ git clone https://github.com/processout/documentation.git
```

Next, we need to install the Ruby gems:

```shell
$ bundle install
```

Next, open Docker on your computer and run this following line :

```shell
$ make build
```

Finally, you need to create an external network named Processout:

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

Welcome on board!
