# docker-demo

## Requirements:  
Images: python:2.7-onbuild, redis, mysql

## To DO:  
1) Run redis docker instance with name "username-redis"
2) Run mysql docker instance with name "username-mysql"
3) Build python app image using Dockerfile by copying app.py and name the image as "username-pyapp"
4) Run the image on external port starting from 30001.. which ever port is available

## Output:
1) Initialise DB  
curl http://$NODE_IP:$NODE_PORT/init

2) Insert data  
curl -i -H "Content-Type: application/json" -X POST -d '{"uid": "1", "user":"John Doe"}' http://$NODE_IP:$NODE_PORT/users/add  
curl -i -H "Content-Type: application/json" -X POST -d '{"uid": "2", "user":"Jane Doe"}' http://$NODE_IP:$NODE_PORT/users/add  
curl -i -H "Content-Type: application/json" -X POST -d '{"uid": "3", "user":"Bill Collins"}' http://$NODE_IP:$NODE_PORT/users/add  
curl -i -H "Content-Type: application/json" -X POST -d '{"uid": "4", "user":"Mike Taylor"}' http://$NODE_IP:$NODE_PORT/users/add  

3) Access the data  
curl http://$NODE_IP:$NODE_PORT/users/1
