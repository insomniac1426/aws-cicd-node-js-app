aws ecr get-login-password --region ap-south-1 | docker login --username AWS --password-stdin 222416445478.dkr.ecr.ap-south-1.amazonaws.com
docker build -t demo-node-js .
docker tag demo-node-js:latest 222416445478.dkr.ecr.ap-south-1.amazonaws.com/demo-node-js:latest
docker push 222416445478.dkr.ecr.ap-south-1.amazonaws.com/demo-node-js:latest