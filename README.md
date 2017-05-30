# docker
Apache DockerFile

Apache is running on two ports: 80 and 8080
We have two virtualhosts: first.conf and second.conf.
You can change config of virtualhost for websites in vhost directory.


Also, you able to upload content in www directory.
For first website in www/first directory
for second website in www/second directory

Create image:
docker build -t name_image .

Run docker:
docker run -ti -p 80:80 -p 8080:8080 --name test name_image
