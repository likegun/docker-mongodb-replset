## Start

 * `./start-repl.sh`


## Stop
  * `./stop-repl.sh`

## Add mognodb node
~~~
dbNum:
  build: .
  ports:
   - "hostport:27017"
  container_name: container_name
~~~
  * Add this to docker-compose.yml
