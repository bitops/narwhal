narwhal
=======

An example Sinatra application that uses Unicorn to spawn a resque
worker process on startup.

Usage
=====

Start the app with:

```unicorn -p 4567 -c unicorn_config.rb```

See the count with: 
```open http://localhost:4567/```

Increment the count by hitting: ```http://localhost:4567/up```

