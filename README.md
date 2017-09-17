#### Dockerfile for node --> brought in via dockerhub

##### additions
Just bringing in a project

##### running
    docker run --name nodeserver -t -p 3001:3001 -d  nodeserver:latest

##### routing
pay attention to `ip tables -L, confirm port open w/
    netcat -vz  $IP  $PORT `

