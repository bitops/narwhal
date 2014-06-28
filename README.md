narwhal
=======

An example Sinatra application that uses Unicorn to spawn a resque
worker process on startup. An example resque-scheduler implementation
is also included.

Overview
========

The app is very straight-forward. There is a key in Redis that gets
initialized to 0 every time the app starts. The count is incremented
every 15 seconds by resque scheduler. The count may also be
incremented manually by hitting the ```/up``` endpoint. The "Usage"
section below shows how to use these.

Install
=======

You'll need redis first:

```shell
brew install redis
```

And all the gems:

```shell
bundle install
```

Usage
=====

Start the app:

```shell
unicorn -p 4567 -c unicorn_config.rb
```

See the count: 
```shell
open http://localhost:4567/
```

Increment the count by hitting:

```shell
http://localhost:4567/up
```

