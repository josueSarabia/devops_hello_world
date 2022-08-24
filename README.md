# devops_hello_world
this project uses terraform to provision 2 ec2 instances(free tier). use ansible to configure jenkins in one server and pip3 + docker in the other(web) server.

# note
- you need to configure security groups for jenkins(for manually create pipeline from the dashaboard) and web servers(jenkins sever needs to have ssh access and you need to open a port, example 8000, to see the hello world app).

- add add ssh jenkins plugin manually and in the pipeline configuration execute a shell command to run the docker image. ex: sudo docker run -dit --name hello_world -p 8000:8000 mrbluetoo/devops_01:devops_01 
