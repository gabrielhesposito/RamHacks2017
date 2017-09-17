#### Dockerfile for node --> brought in via dockerhub

##### additions
Just bringing in a project

##### add to iptables 
    iptables -I INPUT -p tcp --dport 3001 -j ACCEPT

also `sudo service iptables reload ` to 'axe' the above

##### running
                                   (no difference w/o)
    docker run --name nodeserver -t --net=host -p 3001 -d nodeserver:latest

##### routing
pay attention to `ip tables -L, confirm port open w/
    netcat -vz  $IP  $PORT `

