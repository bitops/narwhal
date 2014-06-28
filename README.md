narwhal
=======

An example Sinatra application that uses Unicorn to spawn a resque
worker process on startup. An example resque-scheduler implementation
is also included.

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

