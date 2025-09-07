# tuya-convert_docker 
Docker version of [ct-Open-Source/tuya-convert](https://github.com/ct-Open-Source/tuya-convert) which allows flashing of Tuya IoT devices to alternative firmwares

https://github.com/iainbullock/tuya-convert_docker

For my personal use, limited support is provided. It is fairly self-explanatory if you follow the parent repo README https://github.com/ct-Open-Source/tuya-convert/blob/master/README.md. For this project, you don't need to follow the 'USING DOCKER' section, as the docker image is already built and available on DockerHub: https://hub.docker.com/r/iainbullock/tuya-convert

## Run the container
 - wget https://raw.githubusercontent.com/iainbullock/tuya-convert_docker/refs/heads/main/docker-compose.yml  
 - Edit docker-compose.yml as required for your setup  
 - docker-compose run --rm tuya-convert:latest  

## Alternative - build and run the Docker image from Github
 - wget https://raw.githubusercontent.com/iainbullock/tuya-convert_docker/refs/heads/main/docker-compose.yml  
 - Edit docker-compose.yml as required for your setup  
 - docker build -t tuya-convert:latest https://github.com/iainbullock/tuya-convert_docker.git#main  
 - docker-compose run --rm tuya-convert:latest

## Notes
- Host network mode is required for the container. If the host is using any of the following ports you will have to close the processes on the host which are using them before the container will run - udp 53, udp 67, tcp 80, tcp 443, udp 6666, udp 6667, tcp 1883, tcp 8886
- Run netstat -tulp on host to see which processes have opened which ports
- On my Ubuntu host systemd-resolved is using port 53, and mosquitto is using port 1883. I stop them as follows: service systemd-resolved stop; service mosquitto stop