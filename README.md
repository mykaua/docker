# docker
Apache DockerFile

Apache is running on two ports: 80 and 8080
We have two virtualhosts: first.conf and second.conf.
You can change config of virtualhost for websites in vhost directory.


Also, you able to download content in www directory.

Create image:
docker build -t name_image .

Run docker:
docker run -ti -p 80:80 -p 8080:8080 --name test name_image
